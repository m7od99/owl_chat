// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Payload _$PayloadFromJson(Map<String, dynamic> json) {
  return _Payload.fromJson(json);
}

/// @nodoc
class _$PayloadTearOff {
  const _$PayloadTearOff();

  _Payload call({String? type, String? chat}) {
    return _Payload(
      type: type,
      chat: chat,
    );
  }

  Payload fromJson(Map<String, Object?> json) {
    return Payload.fromJson(json);
  }
}

/// @nodoc
const $Payload = _$PayloadTearOff();

/// @nodoc
mixin _$Payload {
  String? get type => throw _privateConstructorUsedError;
  String? get chat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayloadCopyWith<Payload> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayloadCopyWith<$Res> {
  factory $PayloadCopyWith(Payload value, $Res Function(Payload) then) =
      _$PayloadCopyWithImpl<$Res>;
  $Res call({String? type, String? chat});
}

/// @nodoc
class _$PayloadCopyWithImpl<$Res> implements $PayloadCopyWith<$Res> {
  _$PayloadCopyWithImpl(this._value, this._then);

  final Payload _value;
  // ignore: unused_field
  final $Res Function(Payload) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? chat = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      chat: chat == freezed
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PayloadCopyWith<$Res> implements $PayloadCopyWith<$Res> {
  factory _$PayloadCopyWith(_Payload value, $Res Function(_Payload) then) =
      __$PayloadCopyWithImpl<$Res>;
  @override
  $Res call({String? type, String? chat});
}

/// @nodoc
class __$PayloadCopyWithImpl<$Res> extends _$PayloadCopyWithImpl<$Res>
    implements _$PayloadCopyWith<$Res> {
  __$PayloadCopyWithImpl(_Payload _value, $Res Function(_Payload) _then)
      : super(_value, (v) => _then(v as _Payload));

  @override
  _Payload get _value => super._value as _Payload;

  @override
  $Res call({
    Object? type = freezed,
    Object? chat = freezed,
  }) {
    return _then(_Payload(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      chat: chat == freezed
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Payload implements _Payload {
  _$_Payload({this.type, this.chat});

  factory _$_Payload.fromJson(Map<String, dynamic> json) =>
      _$$_PayloadFromJson(json);

  @override
  final String? type;
  @override
  final String? chat;

  @override
  String toString() {
    return 'Payload(type: $type, chat: $chat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Payload &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.chat, chat));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(chat));

  @JsonKey(ignore: true)
  @override
  _$PayloadCopyWith<_Payload> get copyWith =>
      __$PayloadCopyWithImpl<_Payload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PayloadToJson(this);
  }
}

abstract class _Payload implements Payload {
  factory _Payload({String? type, String? chat}) = _$_Payload;

  factory _Payload.fromJson(Map<String, dynamic> json) = _$_Payload.fromJson;

  @override
  String? get type;
  @override
  String? get chat;
  @override
  @JsonKey(ignore: true)
  _$PayloadCopyWith<_Payload> get copyWith =>
      throw _privateConstructorUsedError;
}
