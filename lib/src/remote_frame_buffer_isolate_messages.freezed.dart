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
mixin _$RemoteFrameBufferIsolateReceiveMessage {
  int get frameBufferHeight => throw _privateConstructorUsedError;
  int get frameBufferWidth => throw _privateConstructorUsedError;
  SendPort get sendPort => throw _privateConstructorUsedError;
  RemoteFrameBufferClientUpdate get update =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteFrameBufferIsolateReceiveMessageCopyWith<
          RemoteFrameBufferIsolateReceiveMessage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteFrameBufferIsolateReceiveMessageCopyWith<$Res> {
  factory $RemoteFrameBufferIsolateReceiveMessageCopyWith(
          RemoteFrameBufferIsolateReceiveMessage value,
          $Res Function(RemoteFrameBufferIsolateReceiveMessage) then) =
      _$RemoteFrameBufferIsolateReceiveMessageCopyWithImpl<$Res,
          RemoteFrameBufferIsolateReceiveMessage>;
  @useResult
  $Res call(
      {int frameBufferHeight,
      int frameBufferWidth,
      SendPort sendPort,
      RemoteFrameBufferClientUpdate update});

  $RemoteFrameBufferClientUpdateCopyWith<$Res> get update;
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frameBufferHeight = null,
    Object? frameBufferWidth = null,
    Object? sendPort = null,
    Object? update = null,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RemoteFrameBufferClientUpdateCopyWith<$Res> get update {
    return $RemoteFrameBufferClientUpdateCopyWith<$Res>(_value.update, (value) {
      return _then(_value.copyWith(update: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RemoteFrameBufferIsolateReceiveMessageCopyWith<$Res>
    implements $RemoteFrameBufferIsolateReceiveMessageCopyWith<$Res> {
  factory _$$_RemoteFrameBufferIsolateReceiveMessageCopyWith(
          _$_RemoteFrameBufferIsolateReceiveMessage value,
          $Res Function(_$_RemoteFrameBufferIsolateReceiveMessage) then) =
      __$$_RemoteFrameBufferIsolateReceiveMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int frameBufferHeight,
      int frameBufferWidth,
      SendPort sendPort,
      RemoteFrameBufferClientUpdate update});

  @override
  $RemoteFrameBufferClientUpdateCopyWith<$Res> get update;
}

/// @nodoc
class __$$_RemoteFrameBufferIsolateReceiveMessageCopyWithImpl<$Res>
    extends _$RemoteFrameBufferIsolateReceiveMessageCopyWithImpl<$Res,
        _$_RemoteFrameBufferIsolateReceiveMessage>
    implements _$$_RemoteFrameBufferIsolateReceiveMessageCopyWith<$Res> {
  __$$_RemoteFrameBufferIsolateReceiveMessageCopyWithImpl(
      _$_RemoteFrameBufferIsolateReceiveMessage _value,
      $Res Function(_$_RemoteFrameBufferIsolateReceiveMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frameBufferHeight = null,
    Object? frameBufferWidth = null,
    Object? sendPort = null,
    Object? update = null,
  }) {
    return _then(_$_RemoteFrameBufferIsolateReceiveMessage(
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
}

/// @nodoc

class _$_RemoteFrameBufferIsolateReceiveMessage
    with DiagnosticableTreeMixin
    implements _RemoteFrameBufferIsolateReceiveMessage {
  const _$_RemoteFrameBufferIsolateReceiveMessage(
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
    return 'RemoteFrameBufferIsolateReceiveMessage(frameBufferHeight: $frameBufferHeight, frameBufferWidth: $frameBufferWidth, sendPort: $sendPort, update: $update)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'RemoteFrameBufferIsolateReceiveMessage'))
      ..add(DiagnosticsProperty('frameBufferHeight', frameBufferHeight))
      ..add(DiagnosticsProperty('frameBufferWidth', frameBufferWidth))
      ..add(DiagnosticsProperty('sendPort', sendPort))
      ..add(DiagnosticsProperty('update', update));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoteFrameBufferIsolateReceiveMessage &&
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
  _$$_RemoteFrameBufferIsolateReceiveMessageCopyWith<
          _$_RemoteFrameBufferIsolateReceiveMessage>
      get copyWith => __$$_RemoteFrameBufferIsolateReceiveMessageCopyWithImpl<
          _$_RemoteFrameBufferIsolateReceiveMessage>(this, _$identity);
}

abstract class _RemoteFrameBufferIsolateReceiveMessage
    implements RemoteFrameBufferIsolateReceiveMessage {
  const factory _RemoteFrameBufferIsolateReceiveMessage(
          {required final int frameBufferHeight,
          required final int frameBufferWidth,
          required final SendPort sendPort,
          required final RemoteFrameBufferClientUpdate update}) =
      _$_RemoteFrameBufferIsolateReceiveMessage;

  @override
  int get frameBufferHeight;
  @override
  int get frameBufferWidth;
  @override
  SendPort get sendPort;
  @override
  RemoteFrameBufferClientUpdate get update;
  @override
  @JsonKey(ignore: true)
  _$$_RemoteFrameBufferIsolateReceiveMessageCopyWith<
          _$_RemoteFrameBufferIsolateReceiveMessage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RemoteFrameBufferIsolateRequestUpdateMessage {}

/// @nodoc
abstract class $RemoteFrameBufferIsolateRequestUpdateMessageCopyWith<$Res> {
  factory $RemoteFrameBufferIsolateRequestUpdateMessageCopyWith(
          RemoteFrameBufferIsolateRequestUpdateMessage value,
          $Res Function(RemoteFrameBufferIsolateRequestUpdateMessage) then) =
      _$RemoteFrameBufferIsolateRequestUpdateMessageCopyWithImpl<$Res,
          RemoteFrameBufferIsolateRequestUpdateMessage>;
}

/// @nodoc
class _$RemoteFrameBufferIsolateRequestUpdateMessageCopyWithImpl<$Res,
        $Val extends RemoteFrameBufferIsolateRequestUpdateMessage>
    implements $RemoteFrameBufferIsolateRequestUpdateMessageCopyWith<$Res> {
  _$RemoteFrameBufferIsolateRequestUpdateMessageCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_RemoteFrameBufferIsolateRequestUpdateMessageCopyWith<$Res> {
  factory _$$_RemoteFrameBufferIsolateRequestUpdateMessageCopyWith(
          _$_RemoteFrameBufferIsolateRequestUpdateMessage value,
          $Res Function(_$_RemoteFrameBufferIsolateRequestUpdateMessage) then) =
      __$$_RemoteFrameBufferIsolateRequestUpdateMessageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RemoteFrameBufferIsolateRequestUpdateMessageCopyWithImpl<$Res>
    extends _$RemoteFrameBufferIsolateRequestUpdateMessageCopyWithImpl<$Res,
        _$_RemoteFrameBufferIsolateRequestUpdateMessage>
    implements _$$_RemoteFrameBufferIsolateRequestUpdateMessageCopyWith<$Res> {
  __$$_RemoteFrameBufferIsolateRequestUpdateMessageCopyWithImpl(
      _$_RemoteFrameBufferIsolateRequestUpdateMessage _value,
      $Res Function(_$_RemoteFrameBufferIsolateRequestUpdateMessage) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RemoteFrameBufferIsolateRequestUpdateMessage
    with DiagnosticableTreeMixin
    implements _RemoteFrameBufferIsolateRequestUpdateMessage {
  const _$_RemoteFrameBufferIsolateRequestUpdateMessage();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RemoteFrameBufferIsolateRequestUpdateMessage()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'RemoteFrameBufferIsolateRequestUpdateMessage'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoteFrameBufferIsolateRequestUpdateMessage);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _RemoteFrameBufferIsolateRequestUpdateMessage
    implements RemoteFrameBufferIsolateRequestUpdateMessage {
  const factory _RemoteFrameBufferIsolateRequestUpdateMessage() =
      _$_RemoteFrameBufferIsolateRequestUpdateMessage;
}

/// @nodoc
mixin _$RemoteFrameBufferIsolateSendMessage {
  String get hostName => throw _privateConstructorUsedError;
  int get port => throw _privateConstructorUsedError;

  /// The [SendPort] used for communicating with the caller.
  SendPort get sendPort => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteFrameBufferIsolateSendMessageCopyWith<
          RemoteFrameBufferIsolateSendMessage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteFrameBufferIsolateSendMessageCopyWith<$Res> {
  factory $RemoteFrameBufferIsolateSendMessageCopyWith(
          RemoteFrameBufferIsolateSendMessage value,
          $Res Function(RemoteFrameBufferIsolateSendMessage) then) =
      _$RemoteFrameBufferIsolateSendMessageCopyWithImpl<$Res,
          RemoteFrameBufferIsolateSendMessage>;
  @useResult
  $Res call({String hostName, int port, SendPort sendPort});
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hostName = null,
    Object? port = null,
    Object? sendPort = null,
  }) {
    return _then(_value.copyWith(
      hostName: null == hostName
          ? _value.hostName
          : hostName // ignore: cast_nullable_to_non_nullable
              as String,
      port: null == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
      sendPort: null == sendPort
          ? _value.sendPort
          : sendPort // ignore: cast_nullable_to_non_nullable
              as SendPort,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RemoteFrameBufferIsolateSendMessageCopyWith<$Res>
    implements $RemoteFrameBufferIsolateSendMessageCopyWith<$Res> {
  factory _$$_RemoteFrameBufferIsolateSendMessageCopyWith(
          _$_RemoteFrameBufferIsolateSendMessage value,
          $Res Function(_$_RemoteFrameBufferIsolateSendMessage) then) =
      __$$_RemoteFrameBufferIsolateSendMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String hostName, int port, SendPort sendPort});
}

/// @nodoc
class __$$_RemoteFrameBufferIsolateSendMessageCopyWithImpl<$Res>
    extends _$RemoteFrameBufferIsolateSendMessageCopyWithImpl<$Res,
        _$_RemoteFrameBufferIsolateSendMessage>
    implements _$$_RemoteFrameBufferIsolateSendMessageCopyWith<$Res> {
  __$$_RemoteFrameBufferIsolateSendMessageCopyWithImpl(
      _$_RemoteFrameBufferIsolateSendMessage _value,
      $Res Function(_$_RemoteFrameBufferIsolateSendMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hostName = null,
    Object? port = null,
    Object? sendPort = null,
  }) {
    return _then(_$_RemoteFrameBufferIsolateSendMessage(
      hostName: null == hostName
          ? _value.hostName
          : hostName // ignore: cast_nullable_to_non_nullable
              as String,
      port: null == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
      sendPort: null == sendPort
          ? _value.sendPort
          : sendPort // ignore: cast_nullable_to_non_nullable
              as SendPort,
    ));
  }
}

/// @nodoc

class _$_RemoteFrameBufferIsolateSendMessage
    with DiagnosticableTreeMixin
    implements _RemoteFrameBufferIsolateSendMessage {
  _$_RemoteFrameBufferIsolateSendMessage(
      {required this.hostName, required this.port, required this.sendPort});

  @override
  final String hostName;
  @override
  final int port;

  /// The [SendPort] used for communicating with the caller.
  @override
  final SendPort sendPort;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RemoteFrameBufferIsolateSendMessage(hostName: $hostName, port: $port, sendPort: $sendPort)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RemoteFrameBufferIsolateSendMessage'))
      ..add(DiagnosticsProperty('hostName', hostName))
      ..add(DiagnosticsProperty('port', port))
      ..add(DiagnosticsProperty('sendPort', sendPort));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoteFrameBufferIsolateSendMessage &&
            (identical(other.hostName, hostName) ||
                other.hostName == hostName) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.sendPort, sendPort) ||
                other.sendPort == sendPort));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hostName, port, sendPort);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoteFrameBufferIsolateSendMessageCopyWith<
          _$_RemoteFrameBufferIsolateSendMessage>
      get copyWith => __$$_RemoteFrameBufferIsolateSendMessageCopyWithImpl<
          _$_RemoteFrameBufferIsolateSendMessage>(this, _$identity);
}

abstract class _RemoteFrameBufferIsolateSendMessage
    implements RemoteFrameBufferIsolateSendMessage {
  factory _RemoteFrameBufferIsolateSendMessage(
          {required final String hostName,
          required final int port,
          required final SendPort sendPort}) =
      _$_RemoteFrameBufferIsolateSendMessage;

  @override
  String get hostName;
  @override
  int get port;
  @override

  /// The [SendPort] used for communicating with the caller.
  SendPort get sendPort;
  @override
  @JsonKey(ignore: true)
  _$$_RemoteFrameBufferIsolateSendMessageCopyWith<
          _$_RemoteFrameBufferIsolateSendMessage>
      get copyWith => throw _privateConstructorUsedError;
}
