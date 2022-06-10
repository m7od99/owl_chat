// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_notifications_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatNotificationsSettings _$ChatNotificationsSettingsFromJson(
    Map<String, dynamic> json) {
  return _ChatNotificationsSettings.fromJson(json);
}

/// @nodoc
class _$ChatNotificationsSettingsTearOff {
  const _$ChatNotificationsSettingsTearOff();

  _ChatNotificationsSettings call(
      {required String chatId,
      required String userId,
      bool allow = true,
      bool vibration = true,
      bool sound = true}) {
    return _ChatNotificationsSettings(
      chatId: chatId,
      userId: userId,
      allow: allow,
      vibration: vibration,
      sound: sound,
    );
  }

  ChatNotificationsSettings fromJson(Map<String, Object?> json) {
    return ChatNotificationsSettings.fromJson(json);
  }
}

/// @nodoc
const $ChatNotificationsSettings = _$ChatNotificationsSettingsTearOff();

/// @nodoc
mixin _$ChatNotificationsSettings {
  String get chatId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  bool get allow => throw _privateConstructorUsedError;
  bool get vibration => throw _privateConstructorUsedError;
  bool get sound => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatNotificationsSettingsCopyWith<ChatNotificationsSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatNotificationsSettingsCopyWith<$Res> {
  factory $ChatNotificationsSettingsCopyWith(ChatNotificationsSettings value,
          $Res Function(ChatNotificationsSettings) then) =
      _$ChatNotificationsSettingsCopyWithImpl<$Res>;
  $Res call(
      {String chatId, String userId, bool allow, bool vibration, bool sound});
}

/// @nodoc
class _$ChatNotificationsSettingsCopyWithImpl<$Res>
    implements $ChatNotificationsSettingsCopyWith<$Res> {
  _$ChatNotificationsSettingsCopyWithImpl(this._value, this._then);

  final ChatNotificationsSettings _value;
  // ignore: unused_field
  final $Res Function(ChatNotificationsSettings) _then;

  @override
  $Res call({
    Object? chatId = freezed,
    Object? userId = freezed,
    Object? allow = freezed,
    Object? vibration = freezed,
    Object? sound = freezed,
  }) {
    return _then(_value.copyWith(
      chatId: chatId == freezed
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      allow: allow == freezed
          ? _value.allow
          : allow // ignore: cast_nullable_to_non_nullable
              as bool,
      vibration: vibration == freezed
          ? _value.vibration
          : vibration // ignore: cast_nullable_to_non_nullable
              as bool,
      sound: sound == freezed
          ? _value.sound
          : sound // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ChatNotificationsSettingsCopyWith<$Res>
    implements $ChatNotificationsSettingsCopyWith<$Res> {
  factory _$ChatNotificationsSettingsCopyWith(_ChatNotificationsSettings value,
          $Res Function(_ChatNotificationsSettings) then) =
      __$ChatNotificationsSettingsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String chatId, String userId, bool allow, bool vibration, bool sound});
}

/// @nodoc
class __$ChatNotificationsSettingsCopyWithImpl<$Res>
    extends _$ChatNotificationsSettingsCopyWithImpl<$Res>
    implements _$ChatNotificationsSettingsCopyWith<$Res> {
  __$ChatNotificationsSettingsCopyWithImpl(_ChatNotificationsSettings _value,
      $Res Function(_ChatNotificationsSettings) _then)
      : super(_value, (v) => _then(v as _ChatNotificationsSettings));

  @override
  _ChatNotificationsSettings get _value =>
      super._value as _ChatNotificationsSettings;

  @override
  $Res call({
    Object? chatId = freezed,
    Object? userId = freezed,
    Object? allow = freezed,
    Object? vibration = freezed,
    Object? sound = freezed,
  }) {
    return _then(_ChatNotificationsSettings(
      chatId: chatId == freezed
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      allow: allow == freezed
          ? _value.allow
          : allow // ignore: cast_nullable_to_non_nullable
              as bool,
      vibration: vibration == freezed
          ? _value.vibration
          : vibration // ignore: cast_nullable_to_non_nullable
              as bool,
      sound: sound == freezed
          ? _value.sound
          : sound // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatNotificationsSettings implements _ChatNotificationsSettings {
  const _$_ChatNotificationsSettings(
      {required this.chatId,
      required this.userId,
      this.allow = true,
      this.vibration = true,
      this.sound = true});

  factory _$_ChatNotificationsSettings.fromJson(Map<String, dynamic> json) =>
      _$$_ChatNotificationsSettingsFromJson(json);

  @override
  final String chatId;
  @override
  final String userId;
  @JsonKey()
  @override
  final bool allow;
  @JsonKey()
  @override
  final bool vibration;
  @JsonKey()
  @override
  final bool sound;

  @override
  String toString() {
    return 'ChatNotificationsSettings(chatId: $chatId, userId: $userId, allow: $allow, vibration: $vibration, sound: $sound)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatNotificationsSettings &&
            const DeepCollectionEquality().equals(other.chatId, chatId) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.allow, allow) &&
            const DeepCollectionEquality().equals(other.vibration, vibration) &&
            const DeepCollectionEquality().equals(other.sound, sound));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(chatId),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(allow),
      const DeepCollectionEquality().hash(vibration),
      const DeepCollectionEquality().hash(sound));

  @JsonKey(ignore: true)
  @override
  _$ChatNotificationsSettingsCopyWith<_ChatNotificationsSettings>
      get copyWith =>
          __$ChatNotificationsSettingsCopyWithImpl<_ChatNotificationsSettings>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatNotificationsSettingsToJson(this);
  }
}

abstract class _ChatNotificationsSettings implements ChatNotificationsSettings {
  const factory _ChatNotificationsSettings(
      {required String chatId,
      required String userId,
      bool allow,
      bool vibration,
      bool sound}) = _$_ChatNotificationsSettings;

  factory _ChatNotificationsSettings.fromJson(Map<String, dynamic> json) =
      _$_ChatNotificationsSettings.fromJson;

  @override
  String get chatId;
  @override
  String get userId;
  @override
  bool get allow;
  @override
  bool get vibration;
  @override
  bool get sound;
  @override
  @JsonKey(ignore: true)
  _$ChatNotificationsSettingsCopyWith<_ChatNotificationsSettings>
      get copyWith => throw _privateConstructorUsedError;
}
