// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      content: Content.fromJson(json['content'] as Map<String, dynamic>),
      type: json['type'] as String,
      chat: json['chat'] as String,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'content': instance.content,
      'type': instance.type,
      'chat': instance.chat,
    };
