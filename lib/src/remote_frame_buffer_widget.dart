import 'dart:async';
import 'dart:isolate';
import 'dart:ui';

import 'package:dart_rfb/dart_rfb.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' hide Image;
import 'package:flutter_rfb/src/child_size_notifier_widget.dart';
import 'package:flutter_rfb/src/remote_frame_buffer_isolate_messages.dart';
import 'package:fpdart/fpdart.dart' hide State;
import 'package:logging/logging.dart';
import 'package:stream_transform/stream_transform.dart';

final Logger _logger = Logger('RemoteFrameBufferWidget');

/// The isolate entry point for running the RFB client in the background.
///
/// [sendMessage] contains the [SendPort] for communicating with the caller.
/// It also contains the hostname and port of the server.
Future<void> _startRemoteFrameBufferClient(
  final RemoteFrameBufferIsolateSendMessage sendMessage,
) async {
  Logger.root
    ..level = Level.FINE
    ..onRecord.listen(
      (final LogRecord logRecord) {
        if (kDebugMode) {
          print(
            '${logRecord.level} ${logRecord.loggerName}: ${logRecord.message}',
          );
        }
      },
    );
  final RemoteFrameBufferClient client = RemoteFrameBufferClient();
  final ReceivePort receivePort = ReceivePort();
  client.updateStream.listen(
    (final RemoteFrameBufferClientUpdate update) {
      sendMessage.sendPort.send(
        RemoteFrameBufferIsolateReceiveMessage(
          frameBufferHeight: client.config
              .map((final Config config) => config.frameBufferHeight)
              .getOrElse(() => 0),
          frameBufferWidth: client.config
              .map((final Config config) => config.frameBufferWidth)
              .getOrElse(() => 0),
          sendPort: receivePort.sendPort,
          update: update,
        ),
      );
    },
  );
  receivePort.listen((final Object? message) {
    if (message is RemoteFrameBufferIsolateRequestUpdateMessage) {
      client.requestUpdate();
    } else if (message is RemoteFrameBufferIsolatePointerEventMessage) {
      client.sendPointerEvent(
        pointerEvent: RemoteFrameBufferClientPointerEvent(
          button1Down: message.button1Down,
          button2Down: message.button2Down,
          button3Down: message.button3Down,
          button4Down: message.button4Down,
          button5Down: message.button5Down,
          button6Down: message.button6Down,
          button7Down: message.button7Down,
          button8Down: message.button8Down,
          x: message.x,
          y: message.y,
        ),
      );
    }
  });
  await client.connect(
    hostname: sendMessage.hostName,
    password: sendMessage.password.toNullable(),
    port: sendMessage.port,
  );
  unawaited(client.startReadLoop());
}

/// This widget displays the framebuffer associated with the RFB session.
/// On creation, it tries to establish a connection with the remote server
/// in an isolate. On success, it runs the read loop in that isolate.
class RemoteFrameBufferWidget extends StatefulWidget {
  final String _hostName;
  final Option<String> _password;
  final int _port;

  /// Immediately tries to establish a connection to a remote server at
  /// [hostName]:[port], optionally using [password].
  RemoteFrameBufferWidget({
    super.key,
    required final String hostName,
    final String? password,
    final int port = 5900,
  })  : _hostName = hostName,
        _password = optionOf(password),
        _port = port;

  @override
  State<RemoteFrameBufferWidget> createState() =>
      RemoteFrameBufferWidgetState();
}

@visibleForTesting
class RemoteFrameBufferWidgetState extends State<RemoteFrameBufferWidget> {
  Option<StreamSubscription<RemoteFrameBufferIsolateReceiveMessage>>
      _streamSubscription = none();
  Option<ByteData> _frameBuffer = none();
  Option<Isolate> _isolate = none();
  Option<Image> _image = none();
  Option<SendPort> _isolateSendPort = none();
  ValueNotifier<Size> sizeValueNotifier = ValueNotifier<Size>(Size.zero);

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
        () => const Center(child: CircularProgressIndicator()),
        (final Image image) => SizeTrackingWidget(
          sizeValueNotifier: sizeValueNotifier,
          child: GestureDetector(
            onSecondaryTapDown: (final TapDownDetails details) =>
                _isolateSendPort.match(
              () {},
              (final SendPort sendPort) => sendPort.send(
                RemoteFrameBufferIsolatePointerEventMessage(
                  button1Down: false,
                  button2Down: false,
                  button3Down: true,
                  button4Down: false,
                  button5Down: false,
                  button6Down: false,
                  button7Down: false,
                  button8Down: false,
                  x: (details.localPosition.dx /
                          sizeValueNotifier.value.width *
                          image.width)
                      .toInt(),
                  y: (details.localPosition.dy /
                          sizeValueNotifier.value.height *
                          image.height)
                      .toInt(),
                ),
              ),
            ),
            onSecondaryTapUp: (final TapUpDetails details) =>
                _isolateSendPort.match(
              () {},
              (final SendPort sendPort) => sendPort.send(
                RemoteFrameBufferIsolatePointerEventMessage(
                  button1Down: false,
                  button2Down: false,
                  button3Down: false,
                  button4Down: false,
                  button5Down: false,
                  button6Down: false,
                  button7Down: false,
                  button8Down: false,
                  x: (details.localPosition.dx /
                          sizeValueNotifier.value.width *
                          image.width)
                      .toInt(),
                  y: (details.localPosition.dy /
                          sizeValueNotifier.value.height *
                          image.height)
                      .toInt(),
                ),
              ),
            ),
            onTapDown: (final TapDownDetails details) => _isolateSendPort.match(
              () {},
              (final SendPort sendPort) => sendPort.send(
                RemoteFrameBufferIsolatePointerEventMessage(
                  button1Down: true,
                  button2Down: false,
                  button3Down: false,
                  button4Down: false,
                  button5Down: false,
                  button6Down: false,
                  button7Down: false,
                  button8Down: false,
                  x: (details.localPosition.dx /
                          sizeValueNotifier.value.width *
                          image.width)
                      .toInt(),
                  y: (details.localPosition.dy /
                          sizeValueNotifier.value.height *
                          image.height)
                      .toInt(),
                ),
              ),
            ),
            onTapUp: (final TapUpDetails details) => _isolateSendPort.match(
              () {},
              (final SendPort sendPort) => sendPort.send(
                RemoteFrameBufferIsolatePointerEventMessage(
                  button1Down: false,
                  button2Down: false,
                  button3Down: false,
                  button4Down: false,
                  button5Down: false,
                  button6Down: false,
                  button7Down: false,
                  button8Down: false,
                  x: (details.localPosition.dx /
                          sizeValueNotifier.value.width *
                          image.width)
                      .toInt(),
                  y: (details.localPosition.dy /
                          sizeValueNotifier.value.height *
                          image.height)
                      .toInt(),
                ),
              ),
            ),
            child: RawImage(image: image),
          ),
        ),
      );

  @override
  void dispose() {
    _streamSubscription.match(
      () {},
      (
        final StreamSubscription<RemoteFrameBufferIsolateReceiveMessage>
            subscription,
      ) =>
          unawaited(subscription.cancel()),
    );
    _isolate.match(
      () {},
      (final Isolate isolate) => isolate.kill(),
    );
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    unawaited(_initAsync());
  }

  /// Initializes logic that requires to be run asynchronous.
  Future<void> _initAsync() async {
    final ReceivePort receivePort = ReceivePort();
    _streamSubscription = some(
      receivePort.whereType<RemoteFrameBufferIsolateReceiveMessage>().listen(
        (final RemoteFrameBufferIsolateReceiveMessage message) {
          _logger.finer(
            'Received new update message with ${message.update.rectangles.length} rectangles',
          );
          _isolateSendPort = some(message.sendPort);
          if (_frameBuffer.isNone()) {
            _frameBuffer = some(
              ByteData(
                message.frameBufferHeight * message.frameBufferWidth * 4,
              ),
            );
          }
          unawaited(
            _frameBuffer.match(
              () async {},
              (final ByteData frameBuffer) async {
                for (final RemoteFrameBufferClientUpdateRectangle rectangle
                    in message.update.rectangles) {
                  (await updateFrameBuffer(
                    frameBuffer: frameBuffer,
                    frameBufferSize: Size(
                      message.frameBufferWidth.toDouble(),
                      message.frameBufferHeight.toDouble(),
                    ),
                    rectangle: rectangle,
                  ).run())
                      .match(
                    (final Object error) =>
                        // ignore: avoid_print
                        print('Error updating frame buffer: $error'),
                    (final _) {},
                  );
                }
                decodeImageFromPixels(
                  frameBuffer.buffer.asUint8List(),
                  message.frameBufferWidth,
                  message.frameBufferHeight,
                  PixelFormat.bgra8888,
                  (final Image result) {
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
                        const RemoteFrameBufferIsolateRequestUpdateMessage(),
                      ),
                    );
                  },
                );
              },
            ),
          );
        },
      ),
    );
    _logger.info('Spawning new isolate for RFB client');
    _isolate = some(
      await Isolate.spawn(
        _startRemoteFrameBufferClient,
        RemoteFrameBufferIsolateSendMessage(
          hostName: widget._hostName,
          password: widget._password,
          port: widget._port,
          sendPort: receivePort.sendPort,
        ),
      ),
    );
  }

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
