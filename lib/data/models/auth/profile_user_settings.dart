// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_user_settings.freezed.dart';
part 'profile_user_settings.g.dart';

@freezed
class UserProfileSettings with _$UserProfileSettings {
  const factory UserProfileSettings({
    required bool darkTheme,
    required String language,
    required NotificationsSetting notificationsSetting,
  }) = _UserProfileSettings;

  factory UserProfileSettings.fromJson(Map<String, dynamic> json) =>
      _$UserProfileSettingsFromJson(json);
}

@freezed
class NotificationsSetting with _$NotificationsSetting {
  const factory NotificationsSetting({
    required bool silent,
    required bool sound,
    required bool allowNotifications,
    required bool displayNotificationsOnForeground,
    required List<String> ignoredNotificationsChats,
  }) = _NotificationsSetting;

  factory NotificationsSetting.fromJson(Map<String, dynamic> json) =>
      _$NotificationsSettingFromJson(json);
}

//todo : lets user chose font size / color for bubble message
// @freezed
// class ChatSettings with _$ChatSettings {
      
// }
