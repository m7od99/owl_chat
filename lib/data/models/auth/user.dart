// ignore_for_file: must_be_immutable

import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:owl_chat/data/models/chats/chat.dart';

class OwlUser extends Equatable {
  OwlUser({
    required this.email,
    required this.userName,
    required this.id,
    this.isOnline,
    this.friends,
    this.chats,
    this.photoUri,
    this.tokens,
    this.onChat,
    this.lastSeen,
  });

  String email;
  String userName;
  String id;
  bool? isOnline;
  List<OwlUser>? friends = [];
  List<Chat>? chats = [];
  String? photoUri;
  String? tokens;
  String? onChat;
  String? lastSeen;

  void addFriend(OwlUser user) {
    friends = [];
    friends!.add(user);
  }

  void addChat(Chat chat) {
    chats = [];
    chats!.add(chat);
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'userName': userName,
      'id': id,
      'isOnline': isOnline,
      'friends': friends?.map((x) => x.toMap()).toList(),
      'chats': chats?.map((x) => x.toJson()).toList(),
      'photoUri': photoUri,
      'tokens': tokens,
      'onChat': onChat,
      'lastSeen': lastSeen,
    };
  }

  String toJson() => json.encode(toMap());

  factory OwlUser.fromMap(Map<String, dynamic> map) {
    return OwlUser(
      email: map['email'] as String,
      userName: map['userName'] as String,
      id: map['id'] as String,
      isOnline: map['isOnline'] as bool?,
      // friends: List<OwlUser>.from(
      //   map['friends']?.map((x) => OwlUser.fromMap(x)),
      // ),
      // chats: List<Chat>.from(map['chats']?.map((x) => Chat.fromMap(x))),
      photoUri: map['photoUri'] as String?,
      onChat: map['onChat'] as String?,
      lastSeen: map['lastSeen'] as String?,
      //  tokens: map['tokens'],
    );
  }

  factory OwlUser.fromJson(String source) =>
      OwlUser.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  List<Object> get props {
    return [
      email,
      userName,
      id,
    ];
  }

  @override
  bool get stringify => true;
}
