import 'dart:async';
import 'dart:isolate';
import 'dart:typed_data';

import 'package:dart_rfb/dart_rfb.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vnc/src/remote_frame_buffer_isolate_messages.dart';
import 'package:fpdart/fpdart.dart' hide State;

class RemoteFrameBufferWidget extends StatefulWidget {
  const RemoteFrameBufferWidget({super.key});

  @override
  State<RemoteFrameBufferWidget> createState() =>
      _RemoteFrameBufferWidgetState();
}

class _RemoteFrameBufferWidgetState extends State<RemoteFrameBufferWidget> {
  // final RemoteFrameBufferClient _remoteFrameBufferClient =
  //     RemoteFrameBufferClient();
  Option<StreamSubscription<RemoteFrameBufferIsolateReceiveMessage>>
      _streamSubscription = none();
  Option<Iterable<Iterable<int>>> _frameBuffer = none();
  Option<Isolate> _isolate = none();

  @override
  void initState() {
    super.initState();
    unawaited(_initAsync());
  }

  @override
  Widget build(final BuildContext context) => _frameBuffer.match(
        () => const CircularProgressIndicator(),
        (final Iterable<Iterable<int>> frameBuffer) => CustomPaint(
          painter: MyCustomPainter(frameBuffer: frameBuffer),
          size: Size(
            frameBuffer.firstOption
                .map((final Iterable<int> row) => row.length)
                .getOrElse(() => 0)
                .toDouble(),
            frameBuffer.length.toDouble(),
            // 5000, 5000,
          ),
        ),
      );

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
          print('Received new frame buffer message');
          setState(() {
            _frameBuffer = some(message.frameBuffer);
          });
        },
      ),
    );
    _isolate = some(
      await Isolate.spawn(
        _startVncClient,
        RemoteFrameBufferIsolateSendMessage(sendPort: receivePort.sendPort),
      ),
    );
    // _streamSubscription = some(
    //   _remoteFrameBufferClient.frameBufferUpdateStream
    //       .listen((final FrameBuffer frameBuffer) {
    //     setState(() {
    //       _frameBuffer = some(frameBuffer);
    //     });
    //     // _streamSubscription.match(() {},
    //     //     (final StreamSubscription<Iterable<Iterable<int>>> subscription) {
    //     //   subscription.cancel();
    //     //   _streamSubscription = none();
    //     //   _remoteFrameBufferClient.close();
    //     // });
    //   }),
    // );
    // await _remoteFrameBufferClient.connect();
    // unawaited(_remoteFrameBufferClient.start());
  }

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
    // unawaited(_remoteFrameBufferClient.close());
    super.dispose();
  }
}

class MyCustomPainter extends CustomPainter {
  final Iterable<Iterable<int>> _frameBuffer;

  final Paint _paint = Paint();

  MyCustomPainter({required final Iterable<Iterable<int>> frameBuffer})
      : _frameBuffer = frameBuffer;

  @override
  void paint(final Canvas canvas, final Size size) {
    // for (int row = 0; row < _frameBuffer.length; row++) {
    //   for (int column = 0;
    //       column < _frameBuffer.elementAt(row).length;
    //       column++) {
    // for (int row = 0; row < min(50, _frameBuffer.length); row++) {
    //   for (int column = 0;
    //       column < min(50, _frameBuffer.elementAt(row).length);
    //       column++) {
    // for (int row = 0; row < _frameBuffer.length; row += 1000) {
    //   for (int column = 0;
    //       column < _frameBuffer.elementAt(row).length;
    //       column += 1000) {
    // for (int row = 0; row < size.height; row += 1000) {
    //   for (int column = 0; column < size.width; column += 1000) {
    //     canvas.drawRect(
    //       Rect.fromLTWH(column.toDouble(), row.toDouble(), 1000, 1000),
    //       _paint
    //         ..color = Color.fromARGB(
    //           255,
    //           randomInt(0, 255).run(),
    //           randomInt(0, 255).run(),
    //           randomInt(0, 255).run(),
    //         ),
    //     );
    // final int pixel = _frameBuffer.elementAt(row).elementAt(column);
    // canvas.drawRect(
    //   Rect.fromLTWH(column.toDouble(), row.toDouble(), 1, 1),
    //   _paint..color = pixel == 0 ? Colors.black : Color(pixel),
    // );
    //   }
    // }
    // for (int row = 0; row < size.height; row++) {
    //   for (int column = 0; column < size.width; column++) {
    //     final Uint8List pixelBytes = Uint8List(4);
    //     pixelBytes.buffer
    //         .asByteData()
    //         .setUint32(0, _frameBuffer.elementAt(row).elementAt(column));
    //     canvas.drawRect(
    //       Rect.fromLTWH(
    //         column.toDouble(),
    //         row.toDouble(),
    //         1,
    //         1,
    //       ),
    //       _paint
    //         ..color = Color.fromARGB(
    //           255,
    //           pixelBytes[1],
    //           pixelBytes[2],
    //           pixelBytes[3],
    //         ),
    //     );
    //   }
    // }
    int squareSize = 100;
    for (int row = 0; row < size.height; row += squareSize) {
      for (int column = 0; column < size.width; column += squareSize) {
        canvas.drawRect(
          Rect.fromLTWH(
            column.toDouble(),
            row.toDouble(),
            squareSize.toDouble(),
            squareSize.toDouble(),
          ),
          _paint
            ..color = Color.fromARGB(
              255,
              randomInt(0, 255).run(),
              randomInt(0, 255).run(),
              randomInt(0, 255).run(),
            ),
        );
      }
    }
  }

  @override
  bool shouldRepaint(covariant final CustomPainter oldDelegate) =>
      (oldDelegate as MyCustomPainter)._frameBuffer != _frameBuffer;
}

Future<void> _startVncClient(
  final RemoteFrameBufferIsolateSendMessage sendMessage,
) async {
  final RemoteFrameBufferClient client = RemoteFrameBufferClient();
  client.frameBufferUpdateStream.listen(
    (final FrameBuffer frameBuffer) {
      sendMessage.sendPort.send(
        RemoteFrameBufferIsolateReceiveMessage(frameBuffer: frameBuffer),
      );
    },
  );
  await client.connect();
  unawaited(client.start());
}
