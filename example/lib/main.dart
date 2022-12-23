import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rfb/flutter_rfb.dart';
import 'package:logging/logging.dart';

void main() {
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
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _connected = false;

  @override
  Widget build(final BuildContext context) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter RFB Example'),
          ),
          body: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _connected = !_connected;
                    });
                  },
                  child: Text(_connected ? 'Disconnect' : 'Connect'),
                ),
                ..._connected
                    ? <Widget>[
                        Expanded(
                          child: Center(
                            child: InteractiveViewer(
                              constrained: true,
                              maxScale: 10,
                              child: Builder(
                                builder: (final BuildContext context) =>
                                    RemoteFrameBufferWidget(
                                  hostName: '127.0.0.1',
                                  onError: (final Object error) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text('Error: $error'),
                                      ),
                                    );
                                    setState(() {
                                      _connected = false;
                                    });
                                  },
                                  password: 'password',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]
                    : <Widget>[],
              ],
            ),
          ),
        ),
      );
}
