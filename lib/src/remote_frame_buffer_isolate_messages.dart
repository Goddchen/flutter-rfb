import 'dart:isolate';

import 'package:dart_rfb/dart_rfb.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_frame_buffer_isolate_messages.freezed.dart';

/// A message that providers a received client update to the caller.
@freezed
class RemoteFrameBufferIsolateReceiveMessage
    with _$RemoteFrameBufferIsolateReceiveMessage {
  const factory RemoteFrameBufferIsolateReceiveMessage.update({
    required final int frameBufferHeight,
    required final int frameBufferWidth,
    required final SendPort sendPort,
    required final RemoteFrameBufferClientUpdate update,
  }) = RemoteFrameBufferIsolateReceiveMessageUpdate;
}

/// The initialization message sent when creating the isolate.
@freezed
class RemoteFrameBufferIsolateInitMessage
    with _$RemoteFrameBufferIsolateInitMessage {
  const factory RemoteFrameBufferIsolateInitMessage({
    required final String hostName,
    required final Option<String> password,
    required final int port,

    /// The [SendPort] used for communicating with the caller.
    required final SendPort sendPort,
  }) = _RemoteFrameBufferIsolateInitMessage;
}

/// A message that is sent to the isolate.
@freezed
class RemoteFrameBufferIsolateSendMessage
    with _$RemoteFrameBufferIsolateSendMessage {
  /// A message that represents the state of all pointer buttons and coordinates.
  const factory RemoteFrameBufferIsolateSendMessage.pointerEvent({
    required final bool button1Down,
    required final bool button2Down,
    required final bool button3Down,
    required final bool button4Down,
    required final bool button5Down,
    required final bool button6Down,
    required final bool button7Down,
    required final bool button8Down,
    required final int x,
    required final int y,
  }) = RemoteFrameBufferIsolateSendMessagePointerEvent;

  /// A message that indicates that the client wants to issue a new update
  /// request.
  const factory RemoteFrameBufferIsolateSendMessage.updateRequest() =
      RemoteFrameBufferIsolateSendMessageUpdateRequest;
}
