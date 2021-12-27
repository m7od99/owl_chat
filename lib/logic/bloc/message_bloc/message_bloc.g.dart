// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageState _$$_MessageStateFromJson(Map<String, dynamic> json) =>
    _$_MessageState(
      chatId: json['chatId'] as String,
      message: MessageModel.fromJson(json['message'] as Map<String, dynamic>),
      messages: (json['messages'] as List<dynamic>)
          .map((e) => MessageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isEdit: json['isEdit'] as bool,
      isReply: json['isReply'] as bool,
      isForward: json['isForward'] as bool,
      loadingMessages: json['loadingMessages'] as bool,
    );

Map<String, dynamic> _$$_MessageStateToJson(_$_MessageState instance) =>
    <String, dynamic>{
      'chatId': instance.chatId,
      'message': instance.message,
      'messages': instance.messages,
      'isEdit': instance.isEdit,
      'isReply': instance.isReply,
      'isForward': instance.isForward,
      'loadingMessages': instance.loadingMessages,
    };
