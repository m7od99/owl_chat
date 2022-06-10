// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationsModel _$$_NotificationsModelFromJson(
        Map<String, dynamic> json) =>
    _$_NotificationsModel(
      priority: json['priority'] as String?,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
      to: json['to'] as String,
      mutableContent: json['mutable_content'] as bool?,
      contentAvailable: json['content_available'] as bool?,
    );

Map<String, dynamic> _$$_NotificationsModelToJson(
        _$_NotificationsModel instance) =>
    <String, dynamic>{
      'priority': instance.priority,
      'data': instance.data,
      'to': instance.to,
      'mutable_content': instance.mutableContent,
      'content_available': instance.contentAvailable,
    };
