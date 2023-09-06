import 'dart:async';
import 'dart:isolate';

import 'package:dart_rfb/dart_rfb.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_rfb/src/remote_frame_buffer_isolate_messages.dart';
import 'package:logging/logging.dart';
import 'package:stream_transform/stream_transform.dart';

/// The isolate entry point for running the RFB client in the background.
///
/// [initMessage] contains the [SendPort] for communicating with the caller.
/// It also contains the hostname and port of the server.
Future<void> startRemoteFrameBufferClient(
  final RemoteFrameBufferIsolateInitMessage initMessage,
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
      initMessage.sendPort.send(
        RemoteFrameBufferIsolateReceiveMessage.frameBufferUpdate(
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
  client.serverClipBoardStream.listen(
    (final String text) => initMessage.sendPort.send(
      RemoteFrameBufferIsolateReceiveMessage.clipBoardUpdate(text: text),
    ),
  );
  receivePort
      .whereType<RemoteFrameBufferIsolateSendMessage>()
      .listen((final RemoteFrameBufferIsolateSendMessage message) {
    message.map(
      clipBoardUpdate:
          (final RemoteFrameBufferIsolateSendMessageClipBoardUpdate update) =>
              client.sendClientCutText(text: update.text),
      keyEvent: (final RemoteFrameBufferIsolateSendMessageKeyEvent keyEvent) =>
          client.sendKeyEvent(
        keyEvent: RemoteFrameBufferClientKeyEvent(
          down: keyEvent.down,
          key: keyEvent.key,
        ),
      ),
      pointerEvent: (
        final RemoteFrameBufferIsolateSendMessagePointerEvent pointerEvent,
      ) =>
          client.sendPointerEvent(
        pointerEvent: RemoteFrameBufferClientPointerEvent(
          button1Down: pointerEvent.button1Down,
          button2Down: pointerEvent.button2Down,
          button3Down: pointerEvent.button3Down,
          button4Down: pointerEvent.button4Down,
          button5Down: pointerEvent.button5Down,
          button6Down: pointerEvent.button6Down,
          button7Down: pointerEvent.button7Down,
          button8Down: pointerEvent.button8Down,
          x: pointerEvent.x,
          y: pointerEvent.y,
        ),
      ),
      frameBufferUpdateRequest: (final _) => client.requestUpdate(),
    );
  });
  await client.connect(
    hostname: initMessage.hostName,
    password: initMessage.password.toNullable(),
    port: initMessage.port,
    timeout: initMessage.timeout,
  );

  client
    ..handleIncomingMessages()
    ..requestUpdate();
}
