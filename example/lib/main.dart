import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rfb/flutter_rfb.dart';
import 'package:logging/logging.dart';

void main() {
  Logger.root
    ..level = Level.ALL
    ..onRecord.listen(
      (final LogRecord logRecord) {
        if (kDebugMode) {
          print(
            '${logRecord.level} ${logRecord.loggerName}: ${logRecord.message}',
          );
        }
      },
    );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(final BuildContext context) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter RFB Example'),
          ),
          body: Center(
            child: InteractiveViewer(
              constrained: true,
              maxScale: 10,
              child: RemoteFrameBufferWidget(
                hostName: '127.0.0.1',
                password: 'password',
              ),
            ),
          ),
        ),
      );
}
