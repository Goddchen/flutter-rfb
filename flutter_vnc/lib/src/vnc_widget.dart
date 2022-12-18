import 'dart:async';
import 'dart:isolate';
import 'dart:ui';

import 'package:dart_rfb/dart_rfb.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' hide Image;
import 'package:flutter_vnc/src/remote_frame_buffer_isolate_messages.dart';
import 'package:fpdart/fpdart.dart' hide State;

Future<void> _startVncClient(
  final RemoteFrameBufferIsolateSendMessage sendMessage,
) async {
  final RemoteFrameBufferClient client = RemoteFrameBufferClient();
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
          update: update,
        ),
      );
    },
  );
  await client.connect();
  unawaited(client.start());
}

class RemoteFrameBufferWidget extends StatefulWidget {
  const RemoteFrameBufferWidget({super.key});

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

  @override
  Widget build(final BuildContext context) => _image.match(
        () => const Center(child: CircularProgressIndicator()),
        (final Image image) => RawImage(image: image),
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

  Future<void> _initAsync() async {
    final ReceivePort receivePort = ReceivePort();
    _streamSubscription = some(
      receivePort
          .where(
            (final Object? event) =>
                event != null &&
                event is RemoteFrameBufferIsolateReceiveMessage,
          )
          .cast<RemoteFrameBufferIsolateReceiveMessage>()
          .listen(
        (final RemoteFrameBufferIsolateReceiveMessage message) {
          // ignore: avoid_print
          print('Received new update message');
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
                  frameBuffer.buffer.asUint8List(
                    frameBuffer.offsetInBytes,
                    frameBuffer.lengthInBytes,
                  ),
                  message.frameBufferWidth,
                  message.frameBufferHeight,
                  PixelFormat.rgba8888,
                  (final Image result) => setState(
                    () {
                      _image.match(
                        () {},
                        (final Image image) => image.dispose(),
                      );
                      _image = some(result);
                    },
                  ),
                );
                // _isolate.match(
                //   () {},
                //   (final Isolate isolate) => isolate.kill(),
                // );
              },
            ),
          );
        },
      ),
    );
    _isolate = some(
      await Isolate.spawn(
        _startVncClient,
        RemoteFrameBufferIsolateSendMessage(sendPort: receivePort.sendPort),
      ),
    );
  }

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
                  rectangle.byteData.getUint32(y * rectangle.width + x * 4);
              frameBuffer.setUint32(
                (frameBufferY * frameBufferSize.width + frameBufferX * 4)
                    .toInt(),
                pixelBytes,
              );
            }
          }
        },
        (final Object error, final _) => error,
      );
}
