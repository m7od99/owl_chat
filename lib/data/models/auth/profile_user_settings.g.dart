// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_user_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfileSettings _$$_UserProfileSettingsFromJson(
        Map<String, dynamic> json) =>
    _$_UserProfileSettings(
      darkTheme: json['darkTheme'] as bool,
      language: json['language'] as String,
      notificationsSetting: NotificationsSetting.fromJson(
          json['notificationsSetting'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserProfileSettingsToJson(
        _$_UserProfileSettings instance) =>
    <String, dynamic>{
      'darkTheme': instance.darkTheme,
      'language': instance.language,
      'notificationsSetting': instance.notificationsSetting.toJson(),
    };

_$_NotificationsSetting _$$_NotificationsSettingFromJson(
        Map<String, dynamic> json) =>
    _$_NotificationsSetting(
      silent: json['silent'] as bool,
      sound: json['sound'] as bool,
      allowNotifications: json['allowNotifications'] as bool,
      displayNotificationsOnForeground:
          json['displayNotificationsOnForeground'] as bool,
      ignoredNotificationsChats:
          (json['ignoredNotificationsChats'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
    );

Map<String, dynamic> _$$_NotificationsSettingToJson(
        _$_NotificationsSetting instance) =>
    <String, dynamic>{
      'silent': instance.silent,
      'sound': instance.sound,
      'allowNotifications': instance.allowNotifications,
      'displayNotificationsOnForeground':
          instance.displayNotificationsOnForeground,
      'ignoredNotificationsChats': instance.ignoredNotificationsChats,
    };
