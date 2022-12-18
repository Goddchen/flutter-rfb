import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:dart_rfb/dart_rfb.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart' hide State;

class RemoteFrameBufferWidget extends StatefulWidget {
  const RemoteFrameBufferWidget({super.key});

  @override
  State<RemoteFrameBufferWidget> createState() =>
      _RemoteFrameBufferWidgetState();
}

class _RemoteFrameBufferWidgetState extends State<RemoteFrameBufferWidget> {
  final RemoteFrameBufferClient _remoteFrameBufferClient =
      RemoteFrameBufferClient();
  Option<StreamSubscription<Iterable<Iterable<int>>>> _streamSubscription =
      none();
  Option<Iterable<Iterable<int>>> _frameBuffer = none();

  @override
  void initState() {
    super.initState();
    unawaited(_initAsync());
  }

  @override
  Widget build(final BuildContext context) => _frameBuffer.match(
        () => const CircularProgressIndicator(),
        (final Iterable<Iterable<int>> frameBuffer) => CustomPaint(
          painter: MyCustomPainter(frameBuffer: <Iterable<int>>[]),
          size: const Size(
            // frameBuffer.firstOption
            //     .map((final Iterable<int> row) => row.length)
            //     .getOrElse(() => 0)
            //     .toDouble(),
            // frameBuffer.length.toDouble(),
            5000, 5000,
          ),
        ),
      );

  Future<void> _initAsync() async {
    _streamSubscription = some(
      _remoteFrameBufferClient.frameBufferUpdateStream
          .listen((final FrameBuffer frameBuffer) {
        setState(() {
          _frameBuffer = some(frameBuffer);
        });
        _streamSubscription.match(() {},
            (final StreamSubscription<Iterable<Iterable<int>>> subscription) {
          subscription.cancel();
          _streamSubscription = none();
          _remoteFrameBufferClient.close();
        });
      }),
    );
    await _remoteFrameBufferClient.connect();
    unawaited(_remoteFrameBufferClient.start());
  }

  @override
  void dispose() {
    _streamSubscription.match(
      () {},
      (final StreamSubscription<Iterable<Iterable<int>>> subscription) =>
          unawaited(subscription.cancel()),
    );
    unawaited(_remoteFrameBufferClient.close());
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
    for (int row = 0; row < size.height; row += 1000) {
      for (int column = 0; column < size.width; column += 1000) {
        canvas.drawRect(
          Rect.fromLTWH(column.toDouble(), row.toDouble(), 1000, 1000),
          _paint
            ..color = Color.fromARGB(
              255,
              randomInt(0, 255).run(),
              randomInt(0, 255).run(),
              randomInt(0, 255).run(),
            ),
        );
        // final int pixel = _frameBuffer.elementAt(row).elementAt(column);
        // canvas.drawRect(
        //   Rect.fromLTWH(column.toDouble(), row.toDouble(), 1, 1),
        //   _paint..color = pixel == 0 ? Colors.black : Color(pixel),
        // );
      }
    }
  }

  @override
  bool shouldRepaint(covariant final CustomPainter oldDelegate) =>
      (oldDelegate as MyCustomPainter)._frameBuffer != _frameBuffer;
}
