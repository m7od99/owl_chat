// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatRoomState _$$_ChatRoomStateFromJson(Map<String, dynamic> json) =>
    _$_ChatRoomState(
      chats: (json['chats'] as List<dynamic>)
          .map((e) => Chat.fromJson(e as Map<String, dynamic>))
          .toList(),
      isLoading: json['isLoading'] as bool,
    );

Map<String, dynamic> _$$_ChatRoomStateToJson(_$_ChatRoomState instance) =>
    <String, dynamic>{
      'chats': instance.chats,
      'isLoading': instance.isLoading,
    };
