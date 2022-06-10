import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_notifications_settings.freezed.dart';
part 'chat_notifications_settings.g.dart';

@freezed
class ChatNotificationsSettings with _$ChatNotificationsSettings {
  const factory ChatNotificationsSettings({
    required String chatId,
    required String userId,
    @Default(true) bool allow,
    @Default(true) bool vibration,
    @Default(true) bool sound,
  }) = _ChatNotificationsSettings;

  factory ChatNotificationsSettings.fromJson(Map<String, dynamic> json) =>
      _$ChatNotificationsSettingsFromJson(json);
}
