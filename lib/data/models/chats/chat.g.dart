// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Chat _$$_ChatFromJson(Map<String, dynamic> json) => _$_Chat(
      id: json['id'] as String,
      other: const AuthorConverter().fromJson(json['other'] as Map),
      me: const AuthorConverter().fromJson(json['me'] as Map),
      lastMessage: json['lastMessage'] as String? ?? '',
      time: const TimestampConverter().fromJson(json['time']),
      totalMessage: json['totalMessage'] as int? ?? 0,
    );

Map<String, dynamic> _$$_ChatToJson(_$_Chat instance) => <String, dynamic>{
      'id': instance.id,
      'other': const AuthorConverter().toJson(instance.other),
      'me': const AuthorConverter().toJson(instance.me),
      'lastMessage': instance.lastMessage,
      'time': const TimestampConverter().toJson(instance.time),
      'totalMessage': instance.totalMessage,
    };
