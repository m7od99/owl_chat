// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatRoom _$$_ChatRoomFromJson(Map<String, dynamic> json) => _$_ChatRoom(
      id: json['id'] as String,
      userId1: json['userId1'] as String,
      userId2: json['userId2'] as String,
      totalMessage: json['totalMessage'] as int?,
      lastMessage: json['lastMessage'] as String?,
      timeOfLastMessage: json['timeOfLastMessage'] as String?,
    );

Map<String, dynamic> _$$_ChatRoomToJson(_$_ChatRoom instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId1': instance.userId1,
      'userId2': instance.userId2,
      'totalMessage': instance.totalMessage,
      'lastMessage': instance.lastMessage,
      'timeOfLastMessage': instance.timeOfLastMessage,
    };
