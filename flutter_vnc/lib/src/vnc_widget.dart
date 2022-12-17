import 'dart:async';

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
        (final Iterable<Iterable<int>> frameBuffer) => Container(
          color: Colors.red,
          height: frameBuffer.length.toDouble(),
          width: frameBuffer.first.length.toDouble(),
        ),
      );

  Future<void> _initAsync() async {
    _streamSubscription = some(
      _remoteFrameBufferClient.frameBufferUpdateStream
          .listen((final FrameBuffer frameBuffer) {
        setState(() {
          _frameBuffer = some(frameBuffer);
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
