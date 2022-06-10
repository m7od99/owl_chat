// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageModel _$$_MessageModelFromJson(Map<String, dynamic> json) =>
    _$_MessageModel(
      text: json['text'] as String,
      sender: json['sender'] as String,
      receiver: json['receiver'] as String,
      isMe: json['isMe'] as bool? ?? false,
      time: const ServerTimestampConverter().fromJson(json['time']),
      type: MessageModel._typeFromJson(json['type'] as String?),
      isSend: json['isSend'] as bool?,
      isSeen: json['isSeen'] as bool?,
      id: json['id'] as String?,
      chatId: json['chatId'] as String?,
      isReplyMessage: json['isReplyMessage'] as bool?,
      forwardMessage: json['forwardMessage'] as bool?,
      isEdited: json['isEdited'] as bool?,
      isGif: json['isGif'] as bool?,
      replyMessageId: json['replyMessageId'] as String?,
    );

Map<String, dynamic> _$$_MessageModelToJson(_$_MessageModel instance) =>
    <String, dynamic>{
      'text': instance.text,
      'sender': instance.sender,
      'receiver': instance.receiver,
      'isMe': instance.isMe,
      'time': const ServerTimestampConverter().toJson(instance.time),
      'type': MessageModel._typeToJson(instance.type),
      'isSend': instance.isSend,
      'isSeen': instance.isSeen,
      'id': instance.id,
      'chatId': instance.chatId,
      'isReplyMessage': instance.isReplyMessage,
      'forwardMessage': instance.forwardMessage,
      'isEdited': instance.isEdited,
      'isGif': instance.isGif,
      'replyMessageId': instance.replyMessageId,
    };
