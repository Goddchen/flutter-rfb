// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_frame_buffer_isolate_messages.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RemoteFrameBufferIsolateInitMessage {
  String get hostName => throw _privateConstructorUsedError;
  Option<String> get password => throw _privateConstructorUsedError;
  int get port => throw _privateConstructorUsedError;
  Duration? get timeout => throw _privateConstructorUsedError;

  /// The [SendPort] used for communicating with the caller.
  SendPort get sendPort => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteFrameBufferIsolateInitMessageCopyWith<
          RemoteFrameBufferIsolateInitMessage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteFrameBufferIsolateInitMessageCopyWith<$Res> {
  factory $RemoteFrameBufferIsolateInitMessageCopyWith(
          RemoteFrameBufferIsolateInitMessage value,
          $Res Function(RemoteFrameBufferIsolateInitMessage) then) =
      _$RemoteFrameBufferIsolateInitMessageCopyWithImpl<$Res,
          RemoteFrameBufferIsolateInitMessage>;
  @useResult
  $Res call({
    String hostName,
    Option<String> password,
    int port,
    Duration? timeout,
    SendPort sendPort,
  });
}

/// @nodoc
class _$RemoteFrameBufferIsolateInitMessageCopyWithImpl<$Res,
        $Val extends RemoteFrameBufferIsolateInitMessage>
    implements $RemoteFrameBufferIsolateInitMessageCopyWith<$Res> {
  _$RemoteFrameBufferIsolateInitMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hostName = null,
    Object? password = null,
    Object? port = null,
    Object? timeout = null,
    Object? sendPort = null,
  }) {
    return _then(_value.copyWith(
      hostName: null == hostName
          ? _value.hostName
          : hostName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      port: null == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
      timeout: null == timeout
          ? _value.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as Duration?,
      sendPort: null == sendPort
          ? _value.sendPort
          : sendPort // ignore: cast_nullable_to_non_nullable
              as SendPort,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RemoteFrameBufferIsolateInitMessageCopyWith<$Res>
    implements $RemoteFrameBufferIsolateInitMessageCopyWith<$Res> {
  factory _$$_RemoteFrameBufferIsolateInitMessageCopyWith(
          _$_RemoteFrameBufferIsolateInitMessage value,
          $Res Function(_$_RemoteFrameBufferIsolateInitMessage) then) =
      __$$_RemoteFrameBufferIsolateInitMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String hostName,
    Option<String> password,
    int port,
    Duration? timeout,
    SendPort sendPort,
  });
}

/// @nodoc
class __$$_RemoteFrameBufferIsolateInitMessageCopyWithImpl<$Res>
    extends _$RemoteFrameBufferIsolateInitMessageCopyWithImpl<$Res,
        _$_RemoteFrameBufferIsolateInitMessage>
    implements _$$_RemoteFrameBufferIsolateInitMessageCopyWith<$Res> {
  __$$_RemoteFrameBufferIsolateInitMessageCopyWithImpl(
      _$_RemoteFrameBufferIsolateInitMessage _value,
      $Res Function(_$_RemoteFrameBufferIsolateInitMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hostName = null,
    Object? password = null,
    Object? port = null,
    Object? timeout = null,
    Object? sendPort = null,
  }) {
    return _then(_$_RemoteFrameBufferIsolateInitMessage(
      hostName: null == hostName
          ? _value.hostName
          : hostName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      port: null == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
      timeout: null == timeout
          ? _value.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as Duration?,
      sendPort: null == sendPort
          ? _value.sendPort
          : sendPort // ignore: cast_nullable_to_non_nullable
              as SendPort,
    ));
  }
}

/// @nodoc

class _$_RemoteFrameBufferIsolateInitMessage
    with DiagnosticableTreeMixin
    implements _RemoteFrameBufferIsolateInitMessage {
  const _$_RemoteFrameBufferIsolateInitMessage(
      {required this.hostName,
      required this.password,
      required this.port,
      required this.timeout,
      required this.sendPort});

  @override
  final String hostName;
  @override
  final Option<String> password;
  @override
  final int port;
  @override
  final Duration? timeout;

  /// The [SendPort] used for communicating with the caller.
  @override
  final SendPort sendPort;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RemoteFrameBufferIsolateInitMessage(hostName: $hostName, password: $password, port: $port, sendPort: $sendPort, timeout: $timeout)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RemoteFrameBufferIsolateInitMessage'))
      ..add(DiagnosticsProperty('hostName', hostName))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('port', port))
      ..add(DiagnosticsProperty('timeout', timeout))
      ..add(DiagnosticsProperty('sendPort', sendPort));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoteFrameBufferIsolateInitMessage &&
            (identical(other.hostName, hostName) ||
                other.hostName == hostName) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.timeout, timeout) || other.timeout == timeout) &&
            (identical(other.sendPort, sendPort) ||
                other.sendPort == sendPort));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, hostName, password, port, sendPort, timeout);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoteFrameBufferIsolateInitMessageCopyWith<
          _$_RemoteFrameBufferIsolateInitMessage>
      get copyWith => __$$_RemoteFrameBufferIsolateInitMessageCopyWithImpl<
          _$_RemoteFrameBufferIsolateInitMessage>(this, _$identity);
}

abstract class _RemoteFrameBufferIsolateInitMessage
    implements RemoteFrameBufferIsolateInitMessage {
  const factory _RemoteFrameBufferIsolateInitMessage(
          {required final String hostName,
          required final Option<String> password,
          required final int port,
          required final Duration? timeout,
          required final SendPort sendPort}) =
      _$_RemoteFrameBufferIsolateInitMessage;

  @override
  String get hostName;
  @override
  Option<String> get password;
  @override
  int get port;
  @override
  Duration? get timeout;
  @override

  /// The [SendPort] used for communicating with the caller.
  SendPort get sendPort;
  @override
  @JsonKey(ignore: true)
  _$$_RemoteFrameBufferIsolateInitMessageCopyWith<
          _$_RemoteFrameBufferIsolateInitMessage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RemoteFrameBufferIsolateReceiveMessage {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) clipBoardUpdate,
    required TResult Function(int frameBufferHeight, int frameBufferWidth,
            SendPort sendPort, RemoteFrameBufferClientUpdate update)
        frameBufferUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? clipBoardUpdate,
    TResult? Function(int frameBufferHeight, int frameBufferWidth,
            SendPort sendPort, RemoteFrameBufferClientUpdate update)?
        frameBufferUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? clipBoardUpdate,
    TResult Function(int frameBufferHeight, int frameBufferWidth,
            SendPort sendPort, RemoteFrameBufferClientUpdate update)?
        frameBufferUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            RemoteFrameBufferIsolateReceiveMessageClipBoardUpdate value)
        clipBoardUpdate,
    required TResult Function(
            RemoteFrameBufferIsolateReceiveMessageFrameBufferUpdate value)
        frameBufferUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(
            RemoteFrameBufferIsolateReceiveMessageClipBoardUpdate value)?
        clipBoardUpdate,
    TResult? Function(
            RemoteFrameBufferIsolateReceiveMessageFrameBufferUpdate value)?
        frameBufferUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(
            RemoteFrameBufferIsolateReceiveMessageClipBoardUpdate value)?
        clipBoardUpdate,
    TResult Function(
            RemoteFrameBufferIsolateReceiveMessageFrameBufferUpdate value)?
        frameBufferUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteFrameBufferIsolateReceiveMessageCopyWith<$Res> {
  factory $RemoteFrameBufferIsolateReceiveMessageCopyWith(
          RemoteFrameBufferIsolateReceiveMessage value,
          $Res Function(RemoteFrameBufferIsolateReceiveMessage) then) =
      _$RemoteFrameBufferIsolateReceiveMessageCopyWithImpl<$Res,
          RemoteFrameBufferIsolateReceiveMessage>;
}

/// @nodoc
class _$RemoteFrameBufferIsolateReceiveMessageCopyWithImpl<$Res,
        $Val extends RemoteFrameBufferIsolateReceiveMessage>
    implements $RemoteFrameBufferIsolateReceiveMessageCopyWith<$Res> {
  _$RemoteFrameBufferIsolateReceiveMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RemoteFrameBufferIsolateReceiveMessageClipBoardUpdateCopyWith<
    $Res> {
  factory _$$RemoteFrameBufferIsolateReceiveMessageClipBoardUpdateCopyWith(
          _$RemoteFrameBufferIsolateReceiveMessageClipBoardUpdate value,
          $Res Function(_$RemoteFrameBufferIsolateReceiveMessageClipBoardUpdate)
              then) =
      __$$RemoteFrameBufferIsolateReceiveMessageClipBoardUpdateCopyWithImpl<
          $Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$RemoteFrameBufferIsolateReceiveMessageClipBoardUpdateCopyWithImpl<
        $Res>
    extends _$RemoteFrameBufferIsolateReceiveMessageCopyWithImpl<$Res,
        _$RemoteFrameBufferIsolateReceiveMessageClipBoardUpdate>
    implements
        _$$RemoteFrameBufferIsolateReceiveMessageClipBoardUpdateCopyWith<$Res> {
  __$$RemoteFrameBufferIsolateReceiveMessageClipBoardUpdateCopyWithImpl(
      _$RemoteFrameBufferIsolateReceiveMessageClipBoardUpdate _value,
      $Res Function(_$RemoteFrameBufferIsolateReceiveMessageClipBoardUpdate)
          _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$RemoteFrameBufferIsolateReceiveMessageClipBoardUpdate(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoteFrameBufferIsolateReceiveMessageClipBoardUpdate
    with DiagnosticableTreeMixin
    implements RemoteFrameBufferIsolateReceiveMessageClipBoardUpdate {
  const _$RemoteFrameBufferIsolateReceiveMessageClipBoardUpdate(
      {required this.text});

  @override
  final String text;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RemoteFrameBufferIsolateReceiveMessage.clipBoardUpdate(text: $text)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RemoteFrameBufferIsolateReceiveMessage.clipBoardUpdate'))
      ..add(DiagnosticsProperty('text', text));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteFrameBufferIsolateReceiveMessageClipBoardUpdate &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteFrameBufferIsolateReceiveMessageClipBoardUpdateCopyWith<
          _$RemoteFrameBufferIsolateReceiveMessageClipBoardUpdate>
      get copyWith =>
          __$$RemoteFrameBufferIsolateReceiveMessageClipBoardUpdateCopyWithImpl<
                  _$RemoteFrameBufferIsolateReceiveMessageClipBoardUpdate>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) clipBoardUpdate,
    required TResult Function(int frameBufferHeight, int frameBufferWidth,
            SendPort sendPort, RemoteFrameBufferClientUpdate update)
        frameBufferUpdate,
  }) {
    return clipBoardUpdate(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? clipBoardUpdate,
    TResult? Function(int frameBufferHeight, int frameBufferWidth,
            SendPort sendPort, RemoteFrameBufferClientUpdate update)?
        frameBufferUpdate,
  }) {
    return clipBoardUpdate?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? clipBoardUpdate,
    TResult Function(int frameBufferHeight, int frameBufferWidth,
            SendPort sendPort, RemoteFrameBufferClientUpdate update)?
        frameBufferUpdate,
    required TResult orElse(),
  }) {
    if (clipBoardUpdate != null) {
      return clipBoardUpdate(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            RemoteFrameBufferIsolateReceiveMessageClipBoardUpdate value)
        clipBoardUpdate,
    required TResult Function(
            RemoteFrameBufferIsolateReceiveMessageFrameBufferUpdate value)
        frameBufferUpdate,
  }) {
    return clipBoardUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(
            RemoteFrameBufferIsolateReceiveMessageClipBoardUpdate value)?
        clipBoardUpdate,
    TResult? Function(
            RemoteFrameBufferIsolateReceiveMessageFrameBufferUpdate value)?
        frameBufferUpdate,
  }) {
    return clipBoardUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(
            RemoteFrameBufferIsolateReceiveMessageClipBoardUpdate value)?
        clipBoardUpdate,
    TResult Function(
            RemoteFrameBufferIsolateReceiveMessageFrameBufferUpdate value)?
        frameBufferUpdate,
    required TResult orElse(),
  }) {
    if (clipBoardUpdate != null) {
      return clipBoardUpdate(this);
    }
    return orElse();
  }
}

abstract class RemoteFrameBufferIsolateReceiveMessageClipBoardUpdate
    implements RemoteFrameBufferIsolateReceiveMessage {
  const factory RemoteFrameBufferIsolateReceiveMessageClipBoardUpdate(
          {required final String text}) =
      _$RemoteFrameBufferIsolateReceiveMessageClipBoardUpdate;

  String get text;
  @JsonKey(ignore: true)
  _$$RemoteFrameBufferIsolateReceiveMessageClipBoardUpdateCopyWith<
          _$RemoteFrameBufferIsolateReceiveMessageClipBoardUpdate>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoteFrameBufferIsolateReceiveMessageFrameBufferUpdateCopyWith<
    $Res> {
  factory _$$RemoteFrameBufferIsolateReceiveMessageFrameBufferUpdateCopyWith(
          _$RemoteFrameBufferIsolateReceiveMessageFrameBufferUpdate value,
          $Res Function(
                  _$RemoteFrameBufferIsolateReceiveMessageFrameBufferUpdate)
              then) =
      __$$RemoteFrameBufferIsolateReceiveMessageFrameBufferUpdateCopyWithImpl<
          $Res>;
  @useResult
  $Res call(
      {int frameBufferHeight,
      int frameBufferWidth,
      SendPort sendPort,
      RemoteFrameBufferClientUpdate update});

  $RemoteFrameBufferClientUpdateCopyWith<$Res> get update;
}

/// @nodoc
class __$$RemoteFrameBufferIsolateReceiveMessageFrameBufferUpdateCopyWithImpl<
        $Res>
    extends _$RemoteFrameBufferIsolateReceiveMessageCopyWithImpl<$Res,
        _$RemoteFrameBufferIsolateReceiveMessageFrameBufferUpdate>
    implements
        _$$RemoteFrameBufferIsolateReceiveMessageFrameBufferUpdateCopyWith<
            $Res> {
  __$$RemoteFrameBufferIsolateReceiveMessageFrameBufferUpdateCopyWithImpl(
      _$RemoteFrameBufferIsolateReceiveMessageFrameBufferUpdate _value,
      $Res Function(_$RemoteFrameBufferIsolateReceiveMessageFrameBufferUpdate)
          _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frameBufferHeight = null,
    Object? frameBufferWidth = null,
    Object? sendPort = null,
    Object? update = null,
  }) {
    return _then(_$RemoteFrameBufferIsolateReceiveMessageFrameBufferUpdate(
      frameBufferHeight: null == frameBufferHeight
          ? _value.frameBufferHeight
          : frameBufferHeight // ignore: cast_nullable_to_non_nullable
              as int,
      frameBufferWidth: null == frameBufferWidth
          ? _value.frameBufferWidth
          : frameBufferWidth // ignore: cast_nullable_to_non_nullable
              as int,
      sendPort: null == sendPort
          ? _value.sendPort
          : sendPort // ignore: cast_nullable_to_non_nullable
              as SendPort,
      update: null == update
          ? _value.update
          : update // ignore: cast_nullable_to_non_nullable
              as RemoteFrameBufferClientUpdate,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RemoteFrameBufferClientUpdateCopyWith<$Res> get update {
    return $RemoteFrameBufferClientUpdateCopyWith<$Res>(_value.update, (value) {
      return _then(_value.copyWith(update: value));
    });
  }
}

/// @nodoc

class _$RemoteFrameBufferIsolateReceiveMessageFrameBufferUpdate
    with DiagnosticableTreeMixin
    implements RemoteFrameBufferIsolateReceiveMessageFrameBufferUpdate {
  const _$RemoteFrameBufferIsolateReceiveMessageFrameBufferUpdate(
      {required this.frameBufferHeight,
      required this.frameBufferWidth,
      required this.sendPort,
      required this.update});

  @override
  final int frameBufferHeight;
  @override
  final int frameBufferWidth;
  @override
  final SendPort sendPort;
  @override
  final RemoteFrameBufferClientUpdate update;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RemoteFrameBufferIsolateReceiveMessage.frameBufferUpdate(frameBufferHeight: $frameBufferHeight, frameBufferWidth: $frameBufferWidth, sendPort: $sendPort, update: $update)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RemoteFrameBufferIsolateReceiveMessage.frameBufferUpdate'))
      ..add(DiagnosticsProperty('frameBufferHeight', frameBufferHeight))
      ..add(DiagnosticsProperty('frameBufferWidth', frameBufferWidth))
      ..add(DiagnosticsProperty('sendPort', sendPort))
      ..add(DiagnosticsProperty('update', update));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other
                is _$RemoteFrameBufferIsolateReceiveMessageFrameBufferUpdate &&
            (identical(other.frameBufferHeight, frameBufferHeight) ||
                other.frameBufferHeight == frameBufferHeight) &&
            (identical(other.frameBufferWidth, frameBufferWidth) ||
                other.frameBufferWidth == frameBufferWidth) &&
            (identical(other.sendPort, sendPort) ||
                other.sendPort == sendPort) &&
            (identical(other.update, update) || other.update == update));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, frameBufferHeight, frameBufferWidth, sendPort, update);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteFrameBufferIsolateReceiveMessageFrameBufferUpdateCopyWith<
          _$RemoteFrameBufferIsolateReceiveMessageFrameBufferUpdate>
      get copyWith =>
          __$$RemoteFrameBufferIsolateReceiveMessageFrameBufferUpdateCopyWithImpl<
                  _$RemoteFrameBufferIsolateReceiveMessageFrameBufferUpdate>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) clipBoardUpdate,
    required TResult Function(int frameBufferHeight, int frameBufferWidth,
            SendPort sendPort, RemoteFrameBufferClientUpdate update)
        frameBufferUpdate,
  }) {
    return frameBufferUpdate(
        frameBufferHeight, frameBufferWidth, sendPort, update);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? clipBoardUpdate,
    TResult? Function(int frameBufferHeight, int frameBufferWidth,
            SendPort sendPort, RemoteFrameBufferClientUpdate update)?
        frameBufferUpdate,
  }) {
    return frameBufferUpdate?.call(
        frameBufferHeight, frameBufferWidth, sendPort, update);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? clipBoardUpdate,
    TResult Function(int frameBufferHeight, int frameBufferWidth,
            SendPort sendPort, RemoteFrameBufferClientUpdate update)?
        frameBufferUpdate,
    required TResult orElse(),
  }) {
    if (frameBufferUpdate != null) {
      return frameBufferUpdate(
          frameBufferHeight, frameBufferWidth, sendPort, update);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            RemoteFrameBufferIsolateReceiveMessageClipBoardUpdate value)
        clipBoardUpdate,
    required TResult Function(
            RemoteFrameBufferIsolateReceiveMessageFrameBufferUpdate value)
        frameBufferUpdate,
  }) {
    return frameBufferUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(
            RemoteFrameBufferIsolateReceiveMessageClipBoardUpdate value)?
        clipBoardUpdate,
    TResult? Function(
            RemoteFrameBufferIsolateReceiveMessageFrameBufferUpdate value)?
        frameBufferUpdate,
  }) {
    return frameBufferUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(
            RemoteFrameBufferIsolateReceiveMessageClipBoardUpdate value)?
        clipBoardUpdate,
    TResult Function(
            RemoteFrameBufferIsolateReceiveMessageFrameBufferUpdate value)?
        frameBufferUpdate,
    required TResult orElse(),
  }) {
    if (frameBufferUpdate != null) {
      return frameBufferUpdate(this);
    }
    return orElse();
  }
}

abstract class RemoteFrameBufferIsolateReceiveMessageFrameBufferUpdate
    implements RemoteFrameBufferIsolateReceiveMessage {
  const factory RemoteFrameBufferIsolateReceiveMessageFrameBufferUpdate(
          {required final int frameBufferHeight,
          required final int frameBufferWidth,
          required final SendPort sendPort,
          required final RemoteFrameBufferClientUpdate update}) =
      _$RemoteFrameBufferIsolateReceiveMessageFrameBufferUpdate;

  int get frameBufferHeight;
  int get frameBufferWidth;
  SendPort get sendPort;
  RemoteFrameBufferClientUpdate get update;
  @JsonKey(ignore: true)
  _$$RemoteFrameBufferIsolateReceiveMessageFrameBufferUpdateCopyWith<
          _$RemoteFrameBufferIsolateReceiveMessageFrameBufferUpdate>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RemoteFrameBufferIsolateSendMessage {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) clipBoardUpdate,
    required TResult Function(bool down, int key) keyEvent,
    required TResult Function(
            bool button1Down,
            bool button2Down,
            bool button3Down,
            bool button4Down,
            bool button5Down,
            bool button6Down,
            bool button7Down,
            bool button8Down,
            int x,
            int y)
        pointerEvent,
    required TResult Function() frameBufferUpdateRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? clipBoardUpdate,
    TResult? Function(bool down, int key)? keyEvent,
    TResult? Function(
            bool button1Down,
            bool button2Down,
            bool button3Down,
            bool button4Down,
            bool button5Down,
            bool button6Down,
            bool button7Down,
            bool button8Down,
            int x,
            int y)?
        pointerEvent,
    TResult? Function()? frameBufferUpdateRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? clipBoardUpdate,
    TResult Function(bool down, int key)? keyEvent,
    TResult Function(
            bool button1Down,
            bool button2Down,
            bool button3Down,
            bool button4Down,
            bool button5Down,
            bool button6Down,
            bool button7Down,
            bool button8Down,
            int x,
            int y)?
        pointerEvent,
    TResult Function()? frameBufferUpdateRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            RemoteFrameBufferIsolateSendMessageClipBoardUpdate value)
        clipBoardUpdate,
    required TResult Function(RemoteFrameBufferIsolateSendMessageKeyEvent value)
        keyEvent,
    required TResult Function(
            RemoteFrameBufferIsolateSendMessagePointerEvent value)
        pointerEvent,
    required TResult Function(
            RemoteFrameBufferIsolateSendMessageUpdateRequest value)
        frameBufferUpdateRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RemoteFrameBufferIsolateSendMessageClipBoardUpdate value)?
        clipBoardUpdate,
    TResult? Function(RemoteFrameBufferIsolateSendMessageKeyEvent value)?
        keyEvent,
    TResult? Function(RemoteFrameBufferIsolateSendMessagePointerEvent value)?
        pointerEvent,
    TResult? Function(RemoteFrameBufferIsolateSendMessageUpdateRequest value)?
        frameBufferUpdateRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemoteFrameBufferIsolateSendMessageClipBoardUpdate value)?
        clipBoardUpdate,
    TResult Function(RemoteFrameBufferIsolateSendMessageKeyEvent value)?
        keyEvent,
    TResult Function(RemoteFrameBufferIsolateSendMessagePointerEvent value)?
        pointerEvent,
    TResult Function(RemoteFrameBufferIsolateSendMessageUpdateRequest value)?
        frameBufferUpdateRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteFrameBufferIsolateSendMessageCopyWith<$Res> {
  factory $RemoteFrameBufferIsolateSendMessageCopyWith(
          RemoteFrameBufferIsolateSendMessage value,
          $Res Function(RemoteFrameBufferIsolateSendMessage) then) =
      _$RemoteFrameBufferIsolateSendMessageCopyWithImpl<$Res,
          RemoteFrameBufferIsolateSendMessage>;
}

/// @nodoc
class _$RemoteFrameBufferIsolateSendMessageCopyWithImpl<$Res,
        $Val extends RemoteFrameBufferIsolateSendMessage>
    implements $RemoteFrameBufferIsolateSendMessageCopyWith<$Res> {
  _$RemoteFrameBufferIsolateSendMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RemoteFrameBufferIsolateSendMessageClipBoardUpdateCopyWith<
    $Res> {
  factory _$$RemoteFrameBufferIsolateSendMessageClipBoardUpdateCopyWith(
          _$RemoteFrameBufferIsolateSendMessageClipBoardUpdate value,
          $Res Function(_$RemoteFrameBufferIsolateSendMessageClipBoardUpdate)
              then) =
      __$$RemoteFrameBufferIsolateSendMessageClipBoardUpdateCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$RemoteFrameBufferIsolateSendMessageClipBoardUpdateCopyWithImpl<$Res>
    extends _$RemoteFrameBufferIsolateSendMessageCopyWithImpl<$Res,
        _$RemoteFrameBufferIsolateSendMessageClipBoardUpdate>
    implements
        _$$RemoteFrameBufferIsolateSendMessageClipBoardUpdateCopyWith<$Res> {
  __$$RemoteFrameBufferIsolateSendMessageClipBoardUpdateCopyWithImpl(
      _$RemoteFrameBufferIsolateSendMessageClipBoardUpdate _value,
      $Res Function(_$RemoteFrameBufferIsolateSendMessageClipBoardUpdate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$RemoteFrameBufferIsolateSendMessageClipBoardUpdate(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoteFrameBufferIsolateSendMessageClipBoardUpdate
    with DiagnosticableTreeMixin
    implements RemoteFrameBufferIsolateSendMessageClipBoardUpdate {
  const _$RemoteFrameBufferIsolateSendMessageClipBoardUpdate(
      {required this.text});

  @override
  final String text;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RemoteFrameBufferIsolateSendMessage.clipBoardUpdate(text: $text)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RemoteFrameBufferIsolateSendMessage.clipBoardUpdate'))
      ..add(DiagnosticsProperty('text', text));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteFrameBufferIsolateSendMessageClipBoardUpdate &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteFrameBufferIsolateSendMessageClipBoardUpdateCopyWith<
          _$RemoteFrameBufferIsolateSendMessageClipBoardUpdate>
      get copyWith =>
          __$$RemoteFrameBufferIsolateSendMessageClipBoardUpdateCopyWithImpl<
                  _$RemoteFrameBufferIsolateSendMessageClipBoardUpdate>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) clipBoardUpdate,
    required TResult Function(bool down, int key) keyEvent,
    required TResult Function(
            bool button1Down,
            bool button2Down,
            bool button3Down,
            bool button4Down,
            bool button5Down,
            bool button6Down,
            bool button7Down,
            bool button8Down,
            int x,
            int y)
        pointerEvent,
    required TResult Function() frameBufferUpdateRequest,
  }) {
    return clipBoardUpdate(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? clipBoardUpdate,
    TResult? Function(bool down, int key)? keyEvent,
    TResult? Function(
            bool button1Down,
            bool button2Down,
            bool button3Down,
            bool button4Down,
            bool button5Down,
            bool button6Down,
            bool button7Down,
            bool button8Down,
            int x,
            int y)?
        pointerEvent,
    TResult? Function()? frameBufferUpdateRequest,
  }) {
    return clipBoardUpdate?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? clipBoardUpdate,
    TResult Function(bool down, int key)? keyEvent,
    TResult Function(
            bool button1Down,
            bool button2Down,
            bool button3Down,
            bool button4Down,
            bool button5Down,
            bool button6Down,
            bool button7Down,
            bool button8Down,
            int x,
            int y)?
        pointerEvent,
    TResult Function()? frameBufferUpdateRequest,
    required TResult orElse(),
  }) {
    if (clipBoardUpdate != null) {
      return clipBoardUpdate(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            RemoteFrameBufferIsolateSendMessageClipBoardUpdate value)
        clipBoardUpdate,
    required TResult Function(RemoteFrameBufferIsolateSendMessageKeyEvent value)
        keyEvent,
    required TResult Function(
            RemoteFrameBufferIsolateSendMessagePointerEvent value)
        pointerEvent,
    required TResult Function(
            RemoteFrameBufferIsolateSendMessageUpdateRequest value)
        frameBufferUpdateRequest,
  }) {
    return clipBoardUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RemoteFrameBufferIsolateSendMessageClipBoardUpdate value)?
        clipBoardUpdate,
    TResult? Function(RemoteFrameBufferIsolateSendMessageKeyEvent value)?
        keyEvent,
    TResult? Function(RemoteFrameBufferIsolateSendMessagePointerEvent value)?
        pointerEvent,
    TResult? Function(RemoteFrameBufferIsolateSendMessageUpdateRequest value)?
        frameBufferUpdateRequest,
  }) {
    return clipBoardUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemoteFrameBufferIsolateSendMessageClipBoardUpdate value)?
        clipBoardUpdate,
    TResult Function(RemoteFrameBufferIsolateSendMessageKeyEvent value)?
        keyEvent,
    TResult Function(RemoteFrameBufferIsolateSendMessagePointerEvent value)?
        pointerEvent,
    TResult Function(RemoteFrameBufferIsolateSendMessageUpdateRequest value)?
        frameBufferUpdateRequest,
    required TResult orElse(),
  }) {
    if (clipBoardUpdate != null) {
      return clipBoardUpdate(this);
    }
    return orElse();
  }
}

abstract class RemoteFrameBufferIsolateSendMessageClipBoardUpdate
    implements RemoteFrameBufferIsolateSendMessage {
  const factory RemoteFrameBufferIsolateSendMessageClipBoardUpdate(
          {required final String text}) =
      _$RemoteFrameBufferIsolateSendMessageClipBoardUpdate;

  String get text;
  @JsonKey(ignore: true)
  _$$RemoteFrameBufferIsolateSendMessageClipBoardUpdateCopyWith<
          _$RemoteFrameBufferIsolateSendMessageClipBoardUpdate>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoteFrameBufferIsolateSendMessageKeyEventCopyWith<$Res> {
  factory _$$RemoteFrameBufferIsolateSendMessageKeyEventCopyWith(
          _$RemoteFrameBufferIsolateSendMessageKeyEvent value,
          $Res Function(_$RemoteFrameBufferIsolateSendMessageKeyEvent) then) =
      __$$RemoteFrameBufferIsolateSendMessageKeyEventCopyWithImpl<$Res>;
  @useResult
  $Res call({bool down, int key});
}

/// @nodoc
class __$$RemoteFrameBufferIsolateSendMessageKeyEventCopyWithImpl<$Res>
    extends _$RemoteFrameBufferIsolateSendMessageCopyWithImpl<$Res,
        _$RemoteFrameBufferIsolateSendMessageKeyEvent>
    implements _$$RemoteFrameBufferIsolateSendMessageKeyEventCopyWith<$Res> {
  __$$RemoteFrameBufferIsolateSendMessageKeyEventCopyWithImpl(
      _$RemoteFrameBufferIsolateSendMessageKeyEvent _value,
      $Res Function(_$RemoteFrameBufferIsolateSendMessageKeyEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? down = null,
    Object? key = null,
  }) {
    return _then(_$RemoteFrameBufferIsolateSendMessageKeyEvent(
      down: null == down
          ? _value.down
          : down // ignore: cast_nullable_to_non_nullable
              as bool,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoteFrameBufferIsolateSendMessageKeyEvent
    with DiagnosticableTreeMixin
    implements RemoteFrameBufferIsolateSendMessageKeyEvent {
  const _$RemoteFrameBufferIsolateSendMessageKeyEvent(
      {required this.down, required this.key});

  @override
  final bool down;
  @override
  final int key;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RemoteFrameBufferIsolateSendMessage.keyEvent(down: $down, key: $key)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RemoteFrameBufferIsolateSendMessage.keyEvent'))
      ..add(DiagnosticsProperty('down', down))
      ..add(DiagnosticsProperty('key', key));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteFrameBufferIsolateSendMessageKeyEvent &&
            (identical(other.down, down) || other.down == down) &&
            (identical(other.key, key) || other.key == key));
  }

  @override
  int get hashCode => Object.hash(runtimeType, down, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteFrameBufferIsolateSendMessageKeyEventCopyWith<
          _$RemoteFrameBufferIsolateSendMessageKeyEvent>
      get copyWith =>
          __$$RemoteFrameBufferIsolateSendMessageKeyEventCopyWithImpl<
              _$RemoteFrameBufferIsolateSendMessageKeyEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) clipBoardUpdate,
    required TResult Function(bool down, int key) keyEvent,
    required TResult Function(
            bool button1Down,
            bool button2Down,
            bool button3Down,
            bool button4Down,
            bool button5Down,
            bool button6Down,
            bool button7Down,
            bool button8Down,
            int x,
            int y)
        pointerEvent,
    required TResult Function() frameBufferUpdateRequest,
  }) {
    return keyEvent(down, key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? clipBoardUpdate,
    TResult? Function(bool down, int key)? keyEvent,
    TResult? Function(
            bool button1Down,
            bool button2Down,
            bool button3Down,
            bool button4Down,
            bool button5Down,
            bool button6Down,
            bool button7Down,
            bool button8Down,
            int x,
            int y)?
        pointerEvent,
    TResult? Function()? frameBufferUpdateRequest,
  }) {
    return keyEvent?.call(down, key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? clipBoardUpdate,
    TResult Function(bool down, int key)? keyEvent,
    TResult Function(
            bool button1Down,
            bool button2Down,
            bool button3Down,
            bool button4Down,
            bool button5Down,
            bool button6Down,
            bool button7Down,
            bool button8Down,
            int x,
            int y)?
        pointerEvent,
    TResult Function()? frameBufferUpdateRequest,
    required TResult orElse(),
  }) {
    if (keyEvent != null) {
      return keyEvent(down, key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            RemoteFrameBufferIsolateSendMessageClipBoardUpdate value)
        clipBoardUpdate,
    required TResult Function(RemoteFrameBufferIsolateSendMessageKeyEvent value)
        keyEvent,
    required TResult Function(
            RemoteFrameBufferIsolateSendMessagePointerEvent value)
        pointerEvent,
    required TResult Function(
            RemoteFrameBufferIsolateSendMessageUpdateRequest value)
        frameBufferUpdateRequest,
  }) {
    return keyEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RemoteFrameBufferIsolateSendMessageClipBoardUpdate value)?
        clipBoardUpdate,
    TResult? Function(RemoteFrameBufferIsolateSendMessageKeyEvent value)?
        keyEvent,
    TResult? Function(RemoteFrameBufferIsolateSendMessagePointerEvent value)?
        pointerEvent,
    TResult? Function(RemoteFrameBufferIsolateSendMessageUpdateRequest value)?
        frameBufferUpdateRequest,
  }) {
    return keyEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemoteFrameBufferIsolateSendMessageClipBoardUpdate value)?
        clipBoardUpdate,
    TResult Function(RemoteFrameBufferIsolateSendMessageKeyEvent value)?
        keyEvent,
    TResult Function(RemoteFrameBufferIsolateSendMessagePointerEvent value)?
        pointerEvent,
    TResult Function(RemoteFrameBufferIsolateSendMessageUpdateRequest value)?
        frameBufferUpdateRequest,
    required TResult orElse(),
  }) {
    if (keyEvent != null) {
      return keyEvent(this);
    }
    return orElse();
  }
}

abstract class RemoteFrameBufferIsolateSendMessageKeyEvent
    implements RemoteFrameBufferIsolateSendMessage {
  const factory RemoteFrameBufferIsolateSendMessageKeyEvent(
      {required final bool down,
      required final int key}) = _$RemoteFrameBufferIsolateSendMessageKeyEvent;

  bool get down;
  int get key;
  @JsonKey(ignore: true)
  _$$RemoteFrameBufferIsolateSendMessageKeyEventCopyWith<
          _$RemoteFrameBufferIsolateSendMessageKeyEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoteFrameBufferIsolateSendMessagePointerEventCopyWith<
    $Res> {
  factory _$$RemoteFrameBufferIsolateSendMessagePointerEventCopyWith(
          _$RemoteFrameBufferIsolateSendMessagePointerEvent value,
          $Res Function(_$RemoteFrameBufferIsolateSendMessagePointerEvent)
              then) =
      __$$RemoteFrameBufferIsolateSendMessagePointerEventCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {bool button1Down,
      bool button2Down,
      bool button3Down,
      bool button4Down,
      bool button5Down,
      bool button6Down,
      bool button7Down,
      bool button8Down,
      int x,
      int y});
}

/// @nodoc
class __$$RemoteFrameBufferIsolateSendMessagePointerEventCopyWithImpl<$Res>
    extends _$RemoteFrameBufferIsolateSendMessageCopyWithImpl<$Res,
        _$RemoteFrameBufferIsolateSendMessagePointerEvent>
    implements
        _$$RemoteFrameBufferIsolateSendMessagePointerEventCopyWith<$Res> {
  __$$RemoteFrameBufferIsolateSendMessagePointerEventCopyWithImpl(
      _$RemoteFrameBufferIsolateSendMessagePointerEvent _value,
      $Res Function(_$RemoteFrameBufferIsolateSendMessagePointerEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? button1Down = null,
    Object? button2Down = null,
    Object? button3Down = null,
    Object? button4Down = null,
    Object? button5Down = null,
    Object? button6Down = null,
    Object? button7Down = null,
    Object? button8Down = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$RemoteFrameBufferIsolateSendMessagePointerEvent(
      button1Down: null == button1Down
          ? _value.button1Down
          : button1Down // ignore: cast_nullable_to_non_nullable
              as bool,
      button2Down: null == button2Down
          ? _value.button2Down
          : button2Down // ignore: cast_nullable_to_non_nullable
              as bool,
      button3Down: null == button3Down
          ? _value.button3Down
          : button3Down // ignore: cast_nullable_to_non_nullable
              as bool,
      button4Down: null == button4Down
          ? _value.button4Down
          : button4Down // ignore: cast_nullable_to_non_nullable
              as bool,
      button5Down: null == button5Down
          ? _value.button5Down
          : button5Down // ignore: cast_nullable_to_non_nullable
              as bool,
      button6Down: null == button6Down
          ? _value.button6Down
          : button6Down // ignore: cast_nullable_to_non_nullable
              as bool,
      button7Down: null == button7Down
          ? _value.button7Down
          : button7Down // ignore: cast_nullable_to_non_nullable
              as bool,
      button8Down: null == button8Down
          ? _value.button8Down
          : button8Down // ignore: cast_nullable_to_non_nullable
              as bool,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoteFrameBufferIsolateSendMessagePointerEvent
    with DiagnosticableTreeMixin
    implements RemoteFrameBufferIsolateSendMessagePointerEvent {
  const _$RemoteFrameBufferIsolateSendMessagePointerEvent(
      {required this.button1Down,
      required this.button2Down,
      required this.button3Down,
      required this.button4Down,
      required this.button5Down,
      required this.button6Down,
      required this.button7Down,
      required this.button8Down,
      required this.x,
      required this.y});

  @override
  final bool button1Down;
  @override
  final bool button2Down;
  @override
  final bool button3Down;
  @override
  final bool button4Down;
  @override
  final bool button5Down;
  @override
  final bool button6Down;
  @override
  final bool button7Down;
  @override
  final bool button8Down;
  @override
  final int x;
  @override
  final int y;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RemoteFrameBufferIsolateSendMessage.pointerEvent(button1Down: $button1Down, button2Down: $button2Down, button3Down: $button3Down, button4Down: $button4Down, button5Down: $button5Down, button6Down: $button6Down, button7Down: $button7Down, button8Down: $button8Down, x: $x, y: $y)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RemoteFrameBufferIsolateSendMessage.pointerEvent'))
      ..add(DiagnosticsProperty('button1Down', button1Down))
      ..add(DiagnosticsProperty('button2Down', button2Down))
      ..add(DiagnosticsProperty('button3Down', button3Down))
      ..add(DiagnosticsProperty('button4Down', button4Down))
      ..add(DiagnosticsProperty('button5Down', button5Down))
      ..add(DiagnosticsProperty('button6Down', button6Down))
      ..add(DiagnosticsProperty('button7Down', button7Down))
      ..add(DiagnosticsProperty('button8Down', button8Down))
      ..add(DiagnosticsProperty('x', x))
      ..add(DiagnosticsProperty('y', y));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteFrameBufferIsolateSendMessagePointerEvent &&
            (identical(other.button1Down, button1Down) ||
                other.button1Down == button1Down) &&
            (identical(other.button2Down, button2Down) ||
                other.button2Down == button2Down) &&
            (identical(other.button3Down, button3Down) ||
                other.button3Down == button3Down) &&
            (identical(other.button4Down, button4Down) ||
                other.button4Down == button4Down) &&
            (identical(other.button5Down, button5Down) ||
                other.button5Down == button5Down) &&
            (identical(other.button6Down, button6Down) ||
                other.button6Down == button6Down) &&
            (identical(other.button7Down, button7Down) ||
                other.button7Down == button7Down) &&
            (identical(other.button8Down, button8Down) ||
                other.button8Down == button8Down) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      button1Down,
      button2Down,
      button3Down,
      button4Down,
      button5Down,
      button6Down,
      button7Down,
      button8Down,
      x,
      y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteFrameBufferIsolateSendMessagePointerEventCopyWith<
          _$RemoteFrameBufferIsolateSendMessagePointerEvent>
      get copyWith =>
          __$$RemoteFrameBufferIsolateSendMessagePointerEventCopyWithImpl<
                  _$RemoteFrameBufferIsolateSendMessagePointerEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) clipBoardUpdate,
    required TResult Function(bool down, int key) keyEvent,
    required TResult Function(
            bool button1Down,
            bool button2Down,
            bool button3Down,
            bool button4Down,
            bool button5Down,
            bool button6Down,
            bool button7Down,
            bool button8Down,
            int x,
            int y)
        pointerEvent,
    required TResult Function() frameBufferUpdateRequest,
  }) {
    return pointerEvent(button1Down, button2Down, button3Down, button4Down,
        button5Down, button6Down, button7Down, button8Down, x, y);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? clipBoardUpdate,
    TResult? Function(bool down, int key)? keyEvent,
    TResult? Function(
            bool button1Down,
            bool button2Down,
            bool button3Down,
            bool button4Down,
            bool button5Down,
            bool button6Down,
            bool button7Down,
            bool button8Down,
            int x,
            int y)?
        pointerEvent,
    TResult? Function()? frameBufferUpdateRequest,
  }) {
    return pointerEvent?.call(button1Down, button2Down, button3Down,
        button4Down, button5Down, button6Down, button7Down, button8Down, x, y);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? clipBoardUpdate,
    TResult Function(bool down, int key)? keyEvent,
    TResult Function(
            bool button1Down,
            bool button2Down,
            bool button3Down,
            bool button4Down,
            bool button5Down,
            bool button6Down,
            bool button7Down,
            bool button8Down,
            int x,
            int y)?
        pointerEvent,
    TResult Function()? frameBufferUpdateRequest,
    required TResult orElse(),
  }) {
    if (pointerEvent != null) {
      return pointerEvent(button1Down, button2Down, button3Down, button4Down,
          button5Down, button6Down, button7Down, button8Down, x, y);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            RemoteFrameBufferIsolateSendMessageClipBoardUpdate value)
        clipBoardUpdate,
    required TResult Function(RemoteFrameBufferIsolateSendMessageKeyEvent value)
        keyEvent,
    required TResult Function(
            RemoteFrameBufferIsolateSendMessagePointerEvent value)
        pointerEvent,
    required TResult Function(
            RemoteFrameBufferIsolateSendMessageUpdateRequest value)
        frameBufferUpdateRequest,
  }) {
    return pointerEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RemoteFrameBufferIsolateSendMessageClipBoardUpdate value)?
        clipBoardUpdate,
    TResult? Function(RemoteFrameBufferIsolateSendMessageKeyEvent value)?
        keyEvent,
    TResult? Function(RemoteFrameBufferIsolateSendMessagePointerEvent value)?
        pointerEvent,
    TResult? Function(RemoteFrameBufferIsolateSendMessageUpdateRequest value)?
        frameBufferUpdateRequest,
  }) {
    return pointerEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemoteFrameBufferIsolateSendMessageClipBoardUpdate value)?
        clipBoardUpdate,
    TResult Function(RemoteFrameBufferIsolateSendMessageKeyEvent value)?
        keyEvent,
    TResult Function(RemoteFrameBufferIsolateSendMessagePointerEvent value)?
        pointerEvent,
    TResult Function(RemoteFrameBufferIsolateSendMessageUpdateRequest value)?
        frameBufferUpdateRequest,
    required TResult orElse(),
  }) {
    if (pointerEvent != null) {
      return pointerEvent(this);
    }
    return orElse();
  }
}

abstract class RemoteFrameBufferIsolateSendMessagePointerEvent
    implements RemoteFrameBufferIsolateSendMessage {
  const factory RemoteFrameBufferIsolateSendMessagePointerEvent(
          {required final bool button1Down,
          required final bool button2Down,
          required final bool button3Down,
          required final bool button4Down,
          required final bool button5Down,
          required final bool button6Down,
          required final bool button7Down,
          required final bool button8Down,
          required final int x,
          required final int y}) =
      _$RemoteFrameBufferIsolateSendMessagePointerEvent;

  bool get button1Down;
  bool get button2Down;
  bool get button3Down;
  bool get button4Down;
  bool get button5Down;
  bool get button6Down;
  bool get button7Down;
  bool get button8Down;
  int get x;
  int get y;
  @JsonKey(ignore: true)
  _$$RemoteFrameBufferIsolateSendMessagePointerEventCopyWith<
          _$RemoteFrameBufferIsolateSendMessagePointerEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoteFrameBufferIsolateSendMessageUpdateRequestCopyWith<
    $Res> {
  factory _$$RemoteFrameBufferIsolateSendMessageUpdateRequestCopyWith(
          _$RemoteFrameBufferIsolateSendMessageUpdateRequest value,
          $Res Function(_$RemoteFrameBufferIsolateSendMessageUpdateRequest)
              then) =
      __$$RemoteFrameBufferIsolateSendMessageUpdateRequestCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoteFrameBufferIsolateSendMessageUpdateRequestCopyWithImpl<$Res>
    extends _$RemoteFrameBufferIsolateSendMessageCopyWithImpl<$Res,
        _$RemoteFrameBufferIsolateSendMessageUpdateRequest>
    implements
        _$$RemoteFrameBufferIsolateSendMessageUpdateRequestCopyWith<$Res> {
  __$$RemoteFrameBufferIsolateSendMessageUpdateRequestCopyWithImpl(
      _$RemoteFrameBufferIsolateSendMessageUpdateRequest _value,
      $Res Function(_$RemoteFrameBufferIsolateSendMessageUpdateRequest) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemoteFrameBufferIsolateSendMessageUpdateRequest
    with DiagnosticableTreeMixin
    implements RemoteFrameBufferIsolateSendMessageUpdateRequest {
  const _$RemoteFrameBufferIsolateSendMessageUpdateRequest();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RemoteFrameBufferIsolateSendMessage.frameBufferUpdateRequest()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type',
        'RemoteFrameBufferIsolateSendMessage.frameBufferUpdateRequest'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteFrameBufferIsolateSendMessageUpdateRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) clipBoardUpdate,
    required TResult Function(bool down, int key) keyEvent,
    required TResult Function(
            bool button1Down,
            bool button2Down,
            bool button3Down,
            bool button4Down,
            bool button5Down,
            bool button6Down,
            bool button7Down,
            bool button8Down,
            int x,
            int y)
        pointerEvent,
    required TResult Function() frameBufferUpdateRequest,
  }) {
    return frameBufferUpdateRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? clipBoardUpdate,
    TResult? Function(bool down, int key)? keyEvent,
    TResult? Function(
            bool button1Down,
            bool button2Down,
            bool button3Down,
            bool button4Down,
            bool button5Down,
            bool button6Down,
            bool button7Down,
            bool button8Down,
            int x,
            int y)?
        pointerEvent,
    TResult? Function()? frameBufferUpdateRequest,
  }) {
    return frameBufferUpdateRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? clipBoardUpdate,
    TResult Function(bool down, int key)? keyEvent,
    TResult Function(
            bool button1Down,
            bool button2Down,
            bool button3Down,
            bool button4Down,
            bool button5Down,
            bool button6Down,
            bool button7Down,
            bool button8Down,
            int x,
            int y)?
        pointerEvent,
    TResult Function()? frameBufferUpdateRequest,
    required TResult orElse(),
  }) {
    if (frameBufferUpdateRequest != null) {
      return frameBufferUpdateRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            RemoteFrameBufferIsolateSendMessageClipBoardUpdate value)
        clipBoardUpdate,
    required TResult Function(RemoteFrameBufferIsolateSendMessageKeyEvent value)
        keyEvent,
    required TResult Function(
            RemoteFrameBufferIsolateSendMessagePointerEvent value)
        pointerEvent,
    required TResult Function(
            RemoteFrameBufferIsolateSendMessageUpdateRequest value)
        frameBufferUpdateRequest,
  }) {
    return frameBufferUpdateRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RemoteFrameBufferIsolateSendMessageClipBoardUpdate value)?
        clipBoardUpdate,
    TResult? Function(RemoteFrameBufferIsolateSendMessageKeyEvent value)?
        keyEvent,
    TResult? Function(RemoteFrameBufferIsolateSendMessagePointerEvent value)?
        pointerEvent,
    TResult? Function(RemoteFrameBufferIsolateSendMessageUpdateRequest value)?
        frameBufferUpdateRequest,
  }) {
    return frameBufferUpdateRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemoteFrameBufferIsolateSendMessageClipBoardUpdate value)?
        clipBoardUpdate,
    TResult Function(RemoteFrameBufferIsolateSendMessageKeyEvent value)?
        keyEvent,
    TResult Function(RemoteFrameBufferIsolateSendMessagePointerEvent value)?
        pointerEvent,
    TResult Function(RemoteFrameBufferIsolateSendMessageUpdateRequest value)?
        frameBufferUpdateRequest,
    required TResult orElse(),
  }) {
    if (frameBufferUpdateRequest != null) {
      return frameBufferUpdateRequest(this);
    }
    return orElse();
  }
}

abstract class RemoteFrameBufferIsolateSendMessageUpdateRequest
    implements RemoteFrameBufferIsolateSendMessage {
  const factory RemoteFrameBufferIsolateSendMessageUpdateRequest() =
      _$RemoteFrameBufferIsolateSendMessageUpdateRequest;
}
