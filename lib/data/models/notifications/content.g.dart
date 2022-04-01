// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Content _$$_ContentFromJson(Map<String, dynamic> json) => _$_Content(
      id: json['id'] as String?,
      title: json['title'] as String?,
      payload: json['payload'] == null
          ? null
          : Payload.fromJson(json['payload'] as Map<String, dynamic>),
      body: json['body'] as String?,
      largeIcon: json['largeIcon'] as String?,
      summary: json['summary'] as String?,
      channelKey: json['channelKey'] as String?,
      category: json['category'] as String?,
      autoDismissible: json['autoDismissible'] as bool?,
      roundedLargeIcon: json['roundedLargeIcon'] as bool?,
      notificationLayout: json['notificationLayout'] as String?,
      showWhen: json['showWhen'] as bool?,
      privacy: json['privacy'] as String?,
    );

Map<String, dynamic> _$$_ContentToJson(_$_Content instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'payload': instance.payload,
      'body': instance.body,
      'largeIcon': instance.largeIcon,
      'summary': instance.summary,
      'channelKey': instance.channelKey,
      'category': instance.category,
      'autoDismissible': instance.autoDismissible,
      'roundedLargeIcon': instance.roundedLargeIcon,
      'notificationLayout': instance.notificationLayout,
      'showWhen': instance.showWhen,
      'privacy': instance.privacy,
    };
