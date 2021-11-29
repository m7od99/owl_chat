// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owl_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Owl _$$_OwlFromJson(Map<String, dynamic> json) => _$_Owl(
      id: json['id'] as String,
      userName: json['userName'] as String,
      email: json['email'] as String,
      onChat: json['onChat'] as String?,
      lastSeen: json['lastSeen'] as String?,
      token: json['token'] as String?,
      photoUri: json['photoUri'] as String?,
      country: json['country'] as String?,
      userState: json['userState'] as String?,
      userTheme: json['userTheme'] as String?,
      chats:
          (json['chats'] as List<dynamic>?)?.map((e) => e as String).toList(),
      friends:
          (json['friends'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_OwlToJson(_$_Owl instance) => <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'email': instance.email,
      'onChat': instance.onChat,
      'lastSeen': instance.lastSeen,
      'token': instance.token,
      'photoUri': instance.photoUri,
      'country': instance.country,
      'userState': instance.userState,
      'userTheme': instance.userTheme,
      'chats': instance.chats,
      'friends': instance.friends,
    };
