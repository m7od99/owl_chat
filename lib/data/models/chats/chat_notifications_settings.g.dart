// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_notifications_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatNotificationsSettings _$$_ChatNotificationsSettingsFromJson(
        Map<String, dynamic> json) =>
    _$_ChatNotificationsSettings(
      chatId: json['chatId'] as String,
      userId: json['userId'] as String,
      allow: json['allow'] as bool? ?? true,
      vibration: json['vibration'] as bool? ?? true,
      sound: json['sound'] as bool? ?? true,
    );

Map<String, dynamic> _$$_ChatNotificationsSettingsToJson(
        _$_ChatNotificationsSettings instance) =>
    <String, dynamic>{
      'chatId': instance.chatId,
      'userId': instance.userId,
      'allow': instance.allow,
      'vibration': instance.vibration,
      'sound': instance.sound,
    };
