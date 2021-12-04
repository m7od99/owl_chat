// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageModel _$$_MessageModelFromJson(Map<String, dynamic> json) =>
    _$_MessageModel(
      data: json['data'] as String,
      sender: json['sender'] as String,
      receiver: json['receiver'] as String,
      time: json['time'] as String,
      type: json['type'] as String,
      isSend: json['isSend'] as bool,
      isSeen: json['isSeen'] as bool,
      id: json['id'] as String,
      chatId: json['chatId'] as String?,
    );

Map<String, dynamic> _$$_MessageModelToJson(_$_MessageModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'sender': instance.sender,
      'receiver': instance.receiver,
      'time': instance.time,
      'type': instance.type,
      'isSend': instance.isSend,
      'isSeen': instance.isSeen,
      'id': instance.id,
      'chatId': instance.chatId,
    };
