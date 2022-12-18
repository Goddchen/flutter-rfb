import 'package:flutter/material.dart';
import 'package:flutter_vnc/flutter_vnc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(final BuildContext context) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter VNC Example'),
          ),
          body: Center(
            child: InteractiveViewer(
              maxScale: 100,
              minScale: 0.1,
              constrained: false,
              child: const RemoteFrameBufferWidget(),
            ),
          ),
        ),
      );
}
