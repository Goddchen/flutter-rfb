import 'dart:async';
import 'dart:isolate';
import 'dart:typed_data';
import 'dart:ui';

import 'package:dart_rfb/dart_rfb.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' hide Image;
import 'package:flutter/services.dart';
import 'package:flutter_rfb/src/child_size_notifier_widget.dart';
import 'package:flutter_rfb/src/extensions/logical_keyboard_key_extensions.dart';
import 'package:flutter_rfb/src/remote_frame_buffer_client_isolate.dart';
import 'package:flutter_rfb/src/remote_frame_buffer_gesture_detector.dart';
import 'package:flutter_rfb/src/remote_frame_buffer_isolate_messages.dart';
import 'package:fpdart/fpdart.dart' hide State;
import 'package:logging/logging.dart';

final Logger _logger = Logger('RemoteFrameBufferWidget');

/// This widget displays the framebuffer associated with the RFB session.
/// On creation, it tries to establish a connection with the remote server
/// in an isolate. On success, it runs the read loop in that isolate.
class RemoteFrameBufferWidget extends StatefulWidget {
  final Option<Widget> _connectingWidget;
  final String _hostName;
  final Option<void Function(Object error)> _onError;
  final Option<String> _password;
  final int _port;

  /// Immediately tries to establish a connection to a remote server at
  /// [hostName]:[port], optionally using [password].
  RemoteFrameBufferWidget({
    super.key,
    final Widget? connectingWidget,
    required final String hostName,
    final void Function(Object error)? onError,
    final String? password,
    final int port = 5900,
  })  : _connectingWidget = optionOf(connectingWidget),
        _hostName = hostName,
        _onError = optionOf(onError),
        _password = optionOf(password),
        _port = port;

  @override
  State<RemoteFrameBufferWidget> createState() =>
      RemoteFrameBufferWidgetState();
}

@visibleForTesting
class RemoteFrameBufferWidgetState extends State<RemoteFrameBufferWidget> {
  Option<ByteData> _frameBuffer = none();
  Option<Image> _image = none();
  Option<Isolate> _isolate = none();
  Option<SendPort> _isolateSendPort = none();
  final ValueNotifier<Size> _sizeValueNotifier = ValueNotifier<Size>(Size.zero);
  Option<StreamSubscription<Object?>> _streamSubscription = none();

  @override
  Widget build(final BuildContext context) => _frameBuffer
      .flatMap(
        (final ByteData frameBuffer) => frameBuffer.buffer
                .asUint8List(
                  frameBuffer.offsetInBytes,
                  frameBuffer.lengthInBytes,
                )
                .where((final int byte) => byte != 0)
                .isNotEmpty
            ? _image
            : none<Image>(),
      )
      .match(
        _buildConnecting,
        (final Image image) => _buildImage(image: image),
      );
  @override
  void dispose() {
    _streamSubscription.match(
      () {},
      (final StreamSubscription<Object?> subscription) =>
          unawaited(subscription.cancel()),
    );
    _image.match(
      () {},
      (final Image image) => image.dispose(),
    );
    _isolate.match(
      () {},
      (final Isolate isolate) => isolate.kill(),
    );
    RawKeyboard.instance.removeListener(_rawKeyEventListener);
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    RawKeyboard.instance.addListener(_rawKeyEventListener);
    unawaited(_initAsync());
  }

  Widget _buildConnecting() => widget._connectingWidget.getOrElse(
        () => const Center(
          child: CircularProgressIndicator(),
        ),
      );

  SizeTrackingWidget _buildImage({required final Image image}) =>
      SizeTrackingWidget(
        sizeValueNotifier: _sizeValueNotifier,
        child: RemoteFrameBufferGestureDetector(
          image: image,
          remoteFrameBufferWidgetSize: _sizeValueNotifier.value,
          sendPort: _isolateSendPort,
          child: RawImage(image: image),
        ),
      );

  void _decodeAndUpdateImage({
    required final ByteData frameBuffer,
    required final RemoteFrameBufferIsolateReceiveMessage message,
  }) =>
      decodeImageFromPixels(
        frameBuffer.buffer.asUint8List(),
        message.frameBufferWidth,
        message.frameBufferHeight,
        PixelFormat.bgra8888,
        (final Image result) {
          if (mounted) {
            setState(
              () {
                _image.match(
                  () {},
                  (final Image image) => image.dispose(),
                );
                _image = some(result);
              },
            );
            _isolateSendPort.match(
              () {},
              (final SendPort sendPort) => sendPort.send(
                const RemoteFrameBufferIsolateSendMessage.updateRequest(),
              ),
            );
          }
        },
      );

  Task<void> _handleUpdateMessage({
    required final RemoteFrameBufferIsolateReceiveMessageUpdate update,
  }) =>
      Task<void>(() async {
        _logger.finer(
          'Received new update message with ${update.update.rectangles.length} rectangles',
        );
        _isolateSendPort = some(update.sendPort);
        if (_frameBuffer.isNone()) {
          _frameBuffer = some(
            ByteData(
              update.frameBufferHeight * update.frameBufferWidth * 4,
            ),
          );
        }
        unawaited(
          _frameBuffer.match(
            () async {},
            (final ByteData frameBuffer) async {
              for (final RemoteFrameBufferClientUpdateRectangle rectangle
                  in update.update.rectangles) {
                await rectangle.encodingType.when(
                  copyRect: () async {
                    final int sourceX = rectangle.byteData.getUint16(0);
                    final int sourceY = rectangle.byteData.getUint16(2);
                    final BytesBuilder bytesBuilder = BytesBuilder();
                    for (int row = 0; row < rectangle.height; row++) {
                      for (int column = 0; column < rectangle.width; column++) {
                        bytesBuilder.add(
                          frameBuffer.buffer.asUint8List(
                            ((sourceY + row) * update.frameBufferWidth +
                                    sourceX +
                                    column) *
                                4,
                            4,
                          ),
                        );
                      }
                    }
                    return (await updateFrameBuffer(
                      frameBuffer: frameBuffer,
                      frameBufferSize: Size(
                        update.frameBufferWidth.toDouble(),
                        update.frameBufferHeight.toDouble(),
                      ),
                      rectangle: rectangle.copyWith(
                        encodingType: const RemoteFrameBufferEncodingType.raw(),
                        byteData: ByteData.sublistView(
                          bytesBuilder.toBytes(),
                        ),
                      ),
                    ).run())
                        .match(
                      (final Object error) =>
                          // ignore: avoid_print
                          print('Error updating frame buffer: $error'),
                      (final _) {},
                    );
                  },
                  raw: () async => (await updateFrameBuffer(
                    frameBuffer: frameBuffer,
                    frameBufferSize: Size(
                      update.frameBufferWidth.toDouble(),
                      update.frameBufferHeight.toDouble(),
                    ),
                    rectangle: rectangle,
                  ).run())
                      .match(
                    (final Object error) =>
                        // ignore: avoid_print
                        print('Error updating frame buffer: $error'),
                    (final _) {},
                  ),
                  unsupported: (final ByteData bytes) async {},
                );
              }
              _decodeAndUpdateImage(
                frameBuffer: frameBuffer,
                message: update,
              );
            },
          ),
        );
      });

  /// Initializes logic that requires to be run asynchronous.
  Future<void> _initAsync() async {
    final ReceivePort receivePort = ReceivePort();
    _streamSubscription = some(
      receivePort.listen(
        (final Object? message) {
          // Error, first is error, second is stacktrace or null
          if (message is List) {
            widget._onError.match(
              () {},
              (final void Function(Object error) onError) =>
                  onError(message.first),
            );
          } else if (message is RemoteFrameBufferIsolateReceiveMessage) {
            message.map(
              update: (
                final RemoteFrameBufferIsolateReceiveMessageUpdate update,
              ) {
                _handleUpdateMessage(update: update).run();
              },
            );
          }
        },
      ),
    );
    _logger.info('Spawning new isolate for RFB client');
    _isolate = some(
      await Isolate.spawn(
        startRemoteFrameBufferClient,
        RemoteFrameBufferIsolateInitMessage(
          hostName: widget._hostName,
          password: widget._password,
          port: widget._port,
          sendPort: receivePort.sendPort,
        ),
        onError: receivePort.sendPort,
      ),
    );
  }

  void _rawKeyEventListener(final RawKeyEvent rawKeyEvent) =>
      _isolateSendPort.match(
        () {},
        (final SendPort sendPort) => sendPort.send(
          RemoteFrameBufferIsolateSendMessage.keyEvent(
            down: rawKeyEvent.isKeyPressed(rawKeyEvent.logicalKey),
            key: rawKeyEvent.logicalKey.asXWindowSystemKey(),
          ),
        ),
      );

  /// Updates [frameBuffer] with the given [rectangle]s.
  @visibleForTesting
  static TaskEither<Object, void> updateFrameBuffer({
    required final ByteData frameBuffer,
    required final Size frameBufferSize,
    required final RemoteFrameBufferClientUpdateRectangle rectangle,
  }) =>
      TaskEither<Object, void>.tryCatch(
        () async {
          for (int y = 0; y < rectangle.height; y++) {
            for (int x = 0; x < rectangle.width; x++) {
              final int frameBufferX = rectangle.x + x;
              final int frameBufferY = rectangle.y + y;
              final int pixelBytes =
                  rectangle.byteData.getUint32((y * rectangle.width + x) * 4);
              frameBuffer.setUint32(
                ((frameBufferY * frameBufferSize.width + frameBufferX) * 4)
                    .toInt(),
                pixelBytes,
              );
            }
          }
        },
        (final Object error, final _) => error,
      );
}
