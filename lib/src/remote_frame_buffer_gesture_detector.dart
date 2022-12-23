import 'dart:isolate';
import 'dart:ui';

import 'package:flutter/widgets.dart' hide Image;
import 'package:flutter_rfb/src/remote_frame_buffer_isolate_messages.dart';
import 'package:fpdart/fpdart.dart';

class RemoteFrameBufferGestureDetector extends GestureDetector {
  final Image _image;
  final Size _remoteFrameBufferWidgetSize;
  final Option<SendPort> _sendPort;

  RemoteFrameBufferGestureDetector({
    super.key,
    required final Image image,
    required final Size remoteFrameBufferWidgetSize,
    required final Option<SendPort> sendPort,
    super.child,
  })  : _image = image,
        _remoteFrameBufferWidgetSize = remoteFrameBufferWidgetSize,
        _sendPort = sendPort;

  @override
  GestureTapDownCallback? get onSecondaryTapDown =>
      (final TapDownDetails details) => _sendPort.match(
            () {},
            (final SendPort sendPort) => sendPort.send(
              RemoteFrameBufferIsolateSendMessage.pointerEvent(
                button1Down: false,
                button2Down: false,
                button3Down: true,
                button4Down: false,
                button5Down: false,
                button6Down: false,
                button7Down: false,
                button8Down: false,
                x: (details.localPosition.dx /
                        _remoteFrameBufferWidgetSize.width *
                        _image.width)
                    .toInt(),
                y: (details.localPosition.dy /
                        _remoteFrameBufferWidgetSize.height *
                        _image.height)
                    .toInt(),
              ),
            ),
          );

  @override
  GestureTapUpCallback? get onSecondaryTapUp =>
      (final TapUpDetails details) => _sendPort.match(
            () {},
            (final SendPort sendPort) => sendPort.send(
              RemoteFrameBufferIsolateSendMessage.pointerEvent(
                button1Down: false,
                button2Down: false,
                button3Down: false,
                button4Down: false,
                button5Down: false,
                button6Down: false,
                button7Down: false,
                button8Down: false,
                x: (details.localPosition.dx /
                        _remoteFrameBufferWidgetSize.width *
                        _image.width)
                    .toInt(),
                y: (details.localPosition.dy /
                        _remoteFrameBufferWidgetSize.height *
                        _image.height)
                    .toInt(),
              ),
            ),
          );

  @override
  GestureTapDownCallback? get onTapDown =>
      (final TapDownDetails details) => _sendPort.match(
            () {},
            (final SendPort sendPort) => sendPort.send(
              RemoteFrameBufferIsolateSendMessage.pointerEvent(
                button1Down: true,
                button2Down: false,
                button3Down: false,
                button4Down: false,
                button5Down: false,
                button6Down: false,
                button7Down: false,
                button8Down: false,
                x: (details.localPosition.dx /
                        _remoteFrameBufferWidgetSize.width *
                        _image.width)
                    .toInt(),
                y: (details.localPosition.dy /
                        _remoteFrameBufferWidgetSize.height *
                        _image.height)
                    .toInt(),
              ),
            ),
          );

  @override
  GestureTapUpCallback? get onTapUp =>
      (final TapUpDetails details) => _sendPort.match(
            () {},
            (final SendPort sendPort) => sendPort.send(
              RemoteFrameBufferIsolateSendMessage.pointerEvent(
                button1Down: false,
                button2Down: false,
                button3Down: false,
                button4Down: false,
                button5Down: false,
                button6Down: false,
                button7Down: false,
                button8Down: false,
                x: (details.localPosition.dx /
                        _remoteFrameBufferWidgetSize.width *
                        _image.width)
                    .toInt(),
                y: (details.localPosition.dy /
                        _remoteFrameBufferWidgetSize.height *
                        _image.height)
                    .toInt(),
              ),
            ),
          );
}
