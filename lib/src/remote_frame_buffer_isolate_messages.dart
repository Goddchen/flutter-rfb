import 'dart:isolate';

import 'package:dart_rfb/dart_rfb.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_frame_buffer_isolate_messages.freezed.dart';

/// A message that providers a received client update to the caller.
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

/// A message that indicates that the client wants to issue a new update
/// request.
@freezed
class RemoteFrameBufferIsolateRequestUpdateMessage
    with _$RemoteFrameBufferIsolateRequestUpdateMessage {
  const factory RemoteFrameBufferIsolateRequestUpdateMessage() =
      _RemoteFrameBufferIsolateRequestUpdateMessage;
}

/// A message that is sent to the isolate to indicate initial config.
@freezed
class RemoteFrameBufferIsolateSendMessage
    with _$RemoteFrameBufferIsolateSendMessage {
  factory RemoteFrameBufferIsolateSendMessage({
    required final String hostName,
    required final int port,

    /// The [SendPort] used for communicating with the caller.
    required final SendPort sendPort,
  }) = _RemoteFrameBufferIsolateSendMessage;
}
