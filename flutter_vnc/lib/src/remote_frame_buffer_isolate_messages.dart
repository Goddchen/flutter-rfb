import 'dart:isolate';

import 'package:dart_rfb/dart_rfb.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_frame_buffer_isolate_messages.freezed.dart';

@freezed
class RemoteFrameBufferIsolateSendMessage
    with _$RemoteFrameBufferIsolateSendMessage {
  factory RemoteFrameBufferIsolateSendMessage({
    required final SendPort sendPort,
  }) = _RemoteFrameBufferIsolateSendMessage;
}

@freezed
class RemoteFrameBufferIsolateReceiveMessage
    with _$RemoteFrameBufferIsolateReceiveMessage {
  const factory RemoteFrameBufferIsolateReceiveMessage({
    required final FrameBuffer frameBuffer,
  }) = _RemoteFrameBufferIsolateReceiveMessage;
}
