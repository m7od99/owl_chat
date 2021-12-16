// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_user_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserProfileSettings _$UserProfileSettingsFromJson(Map<String, dynamic> json) {
  return _UserProfileSettings.fromJson(json);
}

/// @nodoc
class _$UserProfileSettingsTearOff {
  const _$UserProfileSettingsTearOff();

  _UserProfileSettings call(
      {required bool darkTheme,
      required String language,
      required NotificationsSetting notificationsSetting}) {
    return _UserProfileSettings(
      darkTheme: darkTheme,
      language: language,
      notificationsSetting: notificationsSetting,
    );
  }

  UserProfileSettings fromJson(Map<String, Object?> json) {
    return UserProfileSettings.fromJson(json);
  }
}

/// @nodoc
const $UserProfileSettings = _$UserProfileSettingsTearOff();

/// @nodoc
mixin _$UserProfileSettings {
  bool get darkTheme => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  NotificationsSetting get notificationsSetting =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileSettingsCopyWith<UserProfileSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileSettingsCopyWith<$Res> {
  factory $UserProfileSettingsCopyWith(
          UserProfileSettings value, $Res Function(UserProfileSettings) then) =
      _$UserProfileSettingsCopyWithImpl<$Res>;
  $Res call(
      {bool darkTheme,
      String language,
      NotificationsSetting notificationsSetting});

  $NotificationsSettingCopyWith<$Res> get notificationsSetting;
}

/// @nodoc
class _$UserProfileSettingsCopyWithImpl<$Res>
    implements $UserProfileSettingsCopyWith<$Res> {
  _$UserProfileSettingsCopyWithImpl(this._value, this._then);

  final UserProfileSettings _value;
  // ignore: unused_field
  final $Res Function(UserProfileSettings) _then;

  @override
  $Res call({
    Object? darkTheme = freezed,
    Object? language = freezed,
    Object? notificationsSetting = freezed,
  }) {
    return _then(_value.copyWith(
      darkTheme: darkTheme == freezed
          ? _value.darkTheme
          : darkTheme // ignore: cast_nullable_to_non_nullable
              as bool,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      notificationsSetting: notificationsSetting == freezed
          ? _value.notificationsSetting
          : notificationsSetting // ignore: cast_nullable_to_non_nullable
              as NotificationsSetting,
    ));
  }

  @override
  $NotificationsSettingCopyWith<$Res> get notificationsSetting {
    return $NotificationsSettingCopyWith<$Res>(_value.notificationsSetting,
        (value) {
      return _then(_value.copyWith(notificationsSetting: value));
    });
  }
}

/// @nodoc
abstract class _$UserProfileSettingsCopyWith<$Res>
    implements $UserProfileSettingsCopyWith<$Res> {
  factory _$UserProfileSettingsCopyWith(_UserProfileSettings value,
          $Res Function(_UserProfileSettings) then) =
      __$UserProfileSettingsCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool darkTheme,
      String language,
      NotificationsSetting notificationsSetting});

  @override
  $NotificationsSettingCopyWith<$Res> get notificationsSetting;
}

/// @nodoc
class __$UserProfileSettingsCopyWithImpl<$Res>
    extends _$UserProfileSettingsCopyWithImpl<$Res>
    implements _$UserProfileSettingsCopyWith<$Res> {
  __$UserProfileSettingsCopyWithImpl(
      _UserProfileSettings _value, $Res Function(_UserProfileSettings) _then)
      : super(_value, (v) => _then(v as _UserProfileSettings));

  @override
  _UserProfileSettings get _value => super._value as _UserProfileSettings;

  @override
  $Res call({
    Object? darkTheme = freezed,
    Object? language = freezed,
    Object? notificationsSetting = freezed,
  }) {
    return _then(_UserProfileSettings(
      darkTheme: darkTheme == freezed
          ? _value.darkTheme
          : darkTheme // ignore: cast_nullable_to_non_nullable
              as bool,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      notificationsSetting: notificationsSetting == freezed
          ? _value.notificationsSetting
          : notificationsSetting // ignore: cast_nullable_to_non_nullable
              as NotificationsSetting,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserProfileSettings implements _UserProfileSettings {
  const _$_UserProfileSettings(
      {required this.darkTheme,
      required this.language,
      required this.notificationsSetting});

  factory _$_UserProfileSettings.fromJson(Map<String, dynamic> json) =>
      _$$_UserProfileSettingsFromJson(json);

  @override
  final bool darkTheme;
  @override
  final String language;
  @override
  final NotificationsSetting notificationsSetting;

  @override
  String toString() {
    return 'UserProfileSettings(darkTheme: $darkTheme, language: $language, notificationsSetting: $notificationsSetting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserProfileSettings &&
            const DeepCollectionEquality().equals(other.darkTheme, darkTheme) &&
            const DeepCollectionEquality().equals(other.language, language) &&
            const DeepCollectionEquality()
                .equals(other.notificationsSetting, notificationsSetting));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(darkTheme),
      const DeepCollectionEquality().hash(language),
      const DeepCollectionEquality().hash(notificationsSetting));

  @JsonKey(ignore: true)
  @override
  _$UserProfileSettingsCopyWith<_UserProfileSettings> get copyWith =>
      __$UserProfileSettingsCopyWithImpl<_UserProfileSettings>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProfileSettingsToJson(this);
  }
}

abstract class _UserProfileSettings implements UserProfileSettings {
  const factory _UserProfileSettings(
          {required bool darkTheme,
          required String language,
          required NotificationsSetting notificationsSetting}) =
      _$_UserProfileSettings;

  factory _UserProfileSettings.fromJson(Map<String, dynamic> json) =
      _$_UserProfileSettings.fromJson;

  @override
  bool get darkTheme;
  @override
  String get language;
  @override
  NotificationsSetting get notificationsSetting;
  @override
  @JsonKey(ignore: true)
  _$UserProfileSettingsCopyWith<_UserProfileSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

NotificationsSetting _$NotificationsSettingFromJson(Map<String, dynamic> json) {
  return _NotificationsSetting.fromJson(json);
}

/// @nodoc
class _$NotificationsSettingTearOff {
  const _$NotificationsSettingTearOff();

  _NotificationsSetting call(
      {required bool silent,
      required bool sound,
      required bool allowNotifications,
      required bool displayNotificationsOnForeground,
      required List<String> ignoredNotificationsChats}) {
    return _NotificationsSetting(
      silent: silent,
      sound: sound,
      allowNotifications: allowNotifications,
      displayNotificationsOnForeground: displayNotificationsOnForeground,
      ignoredNotificationsChats: ignoredNotificationsChats,
    );
  }

  NotificationsSetting fromJson(Map<String, Object?> json) {
    return NotificationsSetting.fromJson(json);
  }
}

/// @nodoc
const $NotificationsSetting = _$NotificationsSettingTearOff();

/// @nodoc
mixin _$NotificationsSetting {
  bool get silent => throw _privateConstructorUsedError;
  bool get sound => throw _privateConstructorUsedError;
  bool get allowNotifications => throw _privateConstructorUsedError;
  bool get displayNotificationsOnForeground =>
      throw _privateConstructorUsedError;
  List<String> get ignoredNotificationsChats =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationsSettingCopyWith<NotificationsSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsSettingCopyWith<$Res> {
  factory $NotificationsSettingCopyWith(NotificationsSetting value,
          $Res Function(NotificationsSetting) then) =
      _$NotificationsSettingCopyWithImpl<$Res>;
  $Res call(
      {bool silent,
      bool sound,
      bool allowNotifications,
      bool displayNotificationsOnForeground,
      List<String> ignoredNotificationsChats});
}

/// @nodoc
class _$NotificationsSettingCopyWithImpl<$Res>
    implements $NotificationsSettingCopyWith<$Res> {
  _$NotificationsSettingCopyWithImpl(this._value, this._then);

  final NotificationsSetting _value;
  // ignore: unused_field
  final $Res Function(NotificationsSetting) _then;

  @override
  $Res call({
    Object? silent = freezed,
    Object? sound = freezed,
    Object? allowNotifications = freezed,
    Object? displayNotificationsOnForeground = freezed,
    Object? ignoredNotificationsChats = freezed,
  }) {
    return _then(_value.copyWith(
      silent: silent == freezed
          ? _value.silent
          : silent // ignore: cast_nullable_to_non_nullable
              as bool,
      sound: sound == freezed
          ? _value.sound
          : sound // ignore: cast_nullable_to_non_nullable
              as bool,
      allowNotifications: allowNotifications == freezed
          ? _value.allowNotifications
          : allowNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      displayNotificationsOnForeground: displayNotificationsOnForeground ==
              freezed
          ? _value.displayNotificationsOnForeground
          : displayNotificationsOnForeground // ignore: cast_nullable_to_non_nullable
              as bool,
      ignoredNotificationsChats: ignoredNotificationsChats == freezed
          ? _value.ignoredNotificationsChats
          : ignoredNotificationsChats // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$NotificationsSettingCopyWith<$Res>
    implements $NotificationsSettingCopyWith<$Res> {
  factory _$NotificationsSettingCopyWith(_NotificationsSetting value,
          $Res Function(_NotificationsSetting) then) =
      __$NotificationsSettingCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool silent,
      bool sound,
      bool allowNotifications,
      bool displayNotificationsOnForeground,
      List<String> ignoredNotificationsChats});
}

/// @nodoc
class __$NotificationsSettingCopyWithImpl<$Res>
    extends _$NotificationsSettingCopyWithImpl<$Res>
    implements _$NotificationsSettingCopyWith<$Res> {
  __$NotificationsSettingCopyWithImpl(
      _NotificationsSetting _value, $Res Function(_NotificationsSetting) _then)
      : super(_value, (v) => _then(v as _NotificationsSetting));

  @override
  _NotificationsSetting get _value => super._value as _NotificationsSetting;

  @override
  $Res call({
    Object? silent = freezed,
    Object? sound = freezed,
    Object? allowNotifications = freezed,
    Object? displayNotificationsOnForeground = freezed,
    Object? ignoredNotificationsChats = freezed,
  }) {
    return _then(_NotificationsSetting(
      silent: silent == freezed
          ? _value.silent
          : silent // ignore: cast_nullable_to_non_nullable
              as bool,
      sound: sound == freezed
          ? _value.sound
          : sound // ignore: cast_nullable_to_non_nullable
              as bool,
      allowNotifications: allowNotifications == freezed
          ? _value.allowNotifications
          : allowNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      displayNotificationsOnForeground: displayNotificationsOnForeground ==
              freezed
          ? _value.displayNotificationsOnForeground
          : displayNotificationsOnForeground // ignore: cast_nullable_to_non_nullable
              as bool,
      ignoredNotificationsChats: ignoredNotificationsChats == freezed
          ? _value.ignoredNotificationsChats
          : ignoredNotificationsChats // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationsSetting implements _NotificationsSetting {
  const _$_NotificationsSetting(
      {required this.silent,
      required this.sound,
      required this.allowNotifications,
      required this.displayNotificationsOnForeground,
      required this.ignoredNotificationsChats});

  factory _$_NotificationsSetting.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationsSettingFromJson(json);

  @override
  final bool silent;
  @override
  final bool sound;
  @override
  final bool allowNotifications;
  @override
  final bool displayNotificationsOnForeground;
  @override
  final List<String> ignoredNotificationsChats;

  @override
  String toString() {
    return 'NotificationsSetting(silent: $silent, sound: $sound, allowNotifications: $allowNotifications, displayNotificationsOnForeground: $displayNotificationsOnForeground, ignoredNotificationsChats: $ignoredNotificationsChats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationsSetting &&
            const DeepCollectionEquality().equals(other.silent, silent) &&
            const DeepCollectionEquality().equals(other.sound, sound) &&
            const DeepCollectionEquality()
                .equals(other.allowNotifications, allowNotifications) &&
            const DeepCollectionEquality().equals(
                other.displayNotificationsOnForeground,
                displayNotificationsOnForeground) &&
            const DeepCollectionEquality().equals(
                other.ignoredNotificationsChats, ignoredNotificationsChats));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(silent),
      const DeepCollectionEquality().hash(sound),
      const DeepCollectionEquality().hash(allowNotifications),
      const DeepCollectionEquality().hash(displayNotificationsOnForeground),
      const DeepCollectionEquality().hash(ignoredNotificationsChats));

  @JsonKey(ignore: true)
  @override
  _$NotificationsSettingCopyWith<_NotificationsSetting> get copyWith =>
      __$NotificationsSettingCopyWithImpl<_NotificationsSetting>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationsSettingToJson(this);
  }
}

abstract class _NotificationsSetting implements NotificationsSetting {
  const factory _NotificationsSetting(
          {required bool silent,
          required bool sound,
          required bool allowNotifications,
          required bool displayNotificationsOnForeground,
          required List<String> ignoredNotificationsChats}) =
      _$_NotificationsSetting;

  factory _NotificationsSetting.fromJson(Map<String, dynamic> json) =
      _$_NotificationsSetting.fromJson;

  @override
  bool get silent;
  @override
  bool get sound;
  @override
  bool get allowNotifications;
  @override
  bool get displayNotificationsOnForeground;
  @override
  List<String> get ignoredNotificationsChats;
  @override
  @JsonKey(ignore: true)
  _$NotificationsSettingCopyWith<_NotificationsSetting> get copyWith =>
      throw _privateConstructorUsedError;
}
