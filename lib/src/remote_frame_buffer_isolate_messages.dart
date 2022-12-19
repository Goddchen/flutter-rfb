import 'dart:isolate';

import 'package:dart_rfb/dart_rfb.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_frame_buffer_isolate_messages.freezed.dart';

@freezed
class RemoteFrameBufferIsolateReceiveMessage
    with _$RemoteFrameBufferIsolateReceiveMessage {
  const factory RemoteFrameBufferIsolateReceiveMessage({
    required final int frameBufferHeight,
    required final int frameBufferWidth,
    required final SendPort sendPort,
    required final RemoteFrameBufferClientUpdate update,
  }) = _RemoteFrameBufferIsolateReceiveMessage;
}

@freezed
class RemoteFrameBufferIsolateRequestUpdateMessage
    with _$RemoteFrameBufferIsolateRequestUpdateMessage {
  const factory RemoteFrameBufferIsolateRequestUpdateMessage() =
      _RemoteFrameBufferIsolateRequestUpdateMessage;
}

@freezed
class RemoteFrameBufferIsolateSendMessage
    with _$RemoteFrameBufferIsolateSendMessage {
  factory RemoteFrameBufferIsolateSendMessage({
    required final SendPort sendPort,
  }) = _RemoteFrameBufferIsolateSendMessage;
}
