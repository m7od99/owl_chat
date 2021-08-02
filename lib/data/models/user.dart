import 'dart:convert';

import 'package:owl_chat/data/models/chat.dart';

class OwlUser {
  String email;
  String userName;
  String? id;
  bool? isOnline;
  List<Chat>? chats;
  String? photoUri;

  OwlUser({
    required this.email,
    required this.userName,
    this.id,
    this.isOnline,
    this.chats,
    this.photoUri,
  });

  OwlUser copyWith({
    String? email,
    String? userName,
    String? id,
    bool? isOnline,
    List<Chat>? friends,
    String? photoUri,
  }) {
    return OwlUser(
      email: email ?? this.email,
      userName: userName ?? this.userName,
      id: id ?? this.id,
      isOnline: isOnline ?? this.isOnline,
      chats: friends ?? this.chats,
      photoUri: photoUri ?? this.photoUri,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'userName': userName,
      'id': id,
      'isOnline': isOnline,
      'chats': chats?.map((x) => x.toMap()).toList(),
      'photoUri': photoUri,
    };
  }

  String toJson() => json.encode(toMap());

  factory OwlUser.fromMap(Map<String, dynamic> map) {
    return OwlUser(
      email: map['email'],
      userName: map['userName'],
      id: map['id'],
      isOnline: map['isOnline'],
      chats: List<Chat>.from(map['chats']?.map((x) => Chat.fromMap(x))),
      photoUri: map['photoUri'],
    );
  }

  factory OwlUser.fromJson(String source) =>
      OwlUser.fromMap(json.decode(source));
}
