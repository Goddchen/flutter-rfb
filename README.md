# flutter_rfb

A VNC / Remote Framebuffer / RFC 6143 client purely written in Dart/Flutter.

[![](https://img.shields.io/pub/v/flutter_rfb)](https://pub.dev/packages/flutter_rfb)
[![](https://github.com/Goddchen/flutter-rfb/actions/workflows/main.yml/badge.svg)](https://github.com/Goddchen/flutter-rfb/)

## Motivation

We were searching a VNC viewer package for Flutter - without success.
Then there was a discussion about how complex the protocol is and wether we should implement it ourself.
Estimations ranged from 5 days to 100 days and we began joking that I'd be able to do it "after the weekend".
And here we are, after a weekend, with the first, minimal, VNC viewer implementation.

## Supported Features

For a list of currently supported protocol features please head over to the [dart_rfb](https://pub.dev/packages/dart_rfb) package.

## Installation

As simple as `dart pub add flutter_rfb`.

Or manually add `flutter_rfb: ^0.2.0` to your `pubspec.yaml`.

## Usage

```dart
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
```

## Learn More

https://pub.dev/packages/dart_rfb

https://www.rfc-editor.org/rfc/rfc6143
