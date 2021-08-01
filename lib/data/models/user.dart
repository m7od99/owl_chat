import 'dart:convert';

import 'package:owl_chat/data/models/chat.dart';

class OwlUser {
  String email;
  late String userName;
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
      'friends': chats?.map((x) => x.toMap()).toList(),
      'photoUri': photoUri,
    };
  }

  String toJson() => json.encode(toMap());
}
