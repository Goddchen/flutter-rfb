import 'package:flutter/services.dart';

/// Useful extensions for the [LogicalKeyboardKey] class.
extension LogicalKeyboardKeyExtensions on LogicalKeyboardKey {
  /// Convert this logical key to the corresponding X window system key code.
  ///
  /// See: https://www.rfc-editor.org/rfc/rfc6143.html#section-7.5.4
  int asXWindowSystemKey() {
    if (this == LogicalKeyboardKey.backspace) {
      return 0xff08;
    } else if (this == LogicalKeyboardKey.tab) {
      return 0xff09;
    } else if (this == LogicalKeyboardKey.enter) {
      return 0xff0d;
    } else if (this == LogicalKeyboardKey.escape) {
      return 0xff1b;
    } else if (this == LogicalKeyboardKey.insert) {
      return 0xff63;
    } else if (this == LogicalKeyboardKey.delete) {
      return 0xffff;
    } else if (this == LogicalKeyboardKey.home) {
      return 0xff50;
    } else if (this == LogicalKeyboardKey.end) {
      return 0xff57;
    } else if (this == LogicalKeyboardKey.pageUp) {
      return 0xff55;
    } else if (this == LogicalKeyboardKey.pageDown) {
      return 0xff56;
    } else if (this == LogicalKeyboardKey.arrowLeft) {
      return 0xff51;
    } else if (this == LogicalKeyboardKey.arrowUp) {
      return 0xff52;
    } else if (this == LogicalKeyboardKey.arrowRight) {
      return 0xff53;
    } else if (this == LogicalKeyboardKey.arrowDown) {
      return 0xff54;
    } else if (this == LogicalKeyboardKey.f1) {
      return 0xffbe;
    } else if (this == LogicalKeyboardKey.f2) {
      return 0xffbf;
    } else if (this == LogicalKeyboardKey.f3) {
      return 0xffc0;
    } else if (this == LogicalKeyboardKey.f4) {
      return 0xffc1;
    } else if (this == LogicalKeyboardKey.f5) {
      return 0xffc2;
    } else if (this == LogicalKeyboardKey.f6) {
      return 0xffc3;
    } else if (this == LogicalKeyboardKey.f7) {
      return 0xffc4;
    } else if (this == LogicalKeyboardKey.f8) {
      return 0xffc5;
    } else if (this == LogicalKeyboardKey.f9) {
      return 0xffc6;
    } else if (this == LogicalKeyboardKey.f10) {
      return 0xffc7;
    } else if (this == LogicalKeyboardKey.f11) {
      return 0xffc8;
    } else if (this == LogicalKeyboardKey.f12) {
      return 0xffc9;
    } else if (this == LogicalKeyboardKey.shiftLeft) {
      return 0xffe1;
    } else if (this == LogicalKeyboardKey.shiftRight) {
      return 0xffe2;
    } else if (this == LogicalKeyboardKey.controlLeft) {
      return 0xffe3;
    } else if (this == LogicalKeyboardKey.controlRight) {
      return 0xffe4;
    } else if (this == LogicalKeyboardKey.metaLeft) {
      return 0xffe7;
    } else if (this == LogicalKeyboardKey.metaRight) {
      return 0xffe8;
    } else if (this == LogicalKeyboardKey.altLeft) {
      return 0xffe9;
    } else if (this == LogicalKeyboardKey.altRight) {
      return 0xffea;
    } else {
      return keyId;
    }
  }
}
