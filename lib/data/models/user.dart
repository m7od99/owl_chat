import 'dart:convert';

import 'package:owl_chat/data/models/chat.dart';

class OwlUser {
  String email;
  String userName;
  String id;
  bool? isOnline;
  List<OwlUser>? friends = [];
  List<Chat>? chats = [];
  String? photoUri;
  String? tokens;

  void addFriend(OwlUser user) {
    friends = [];
    friends!.add(user);
  }

  void addChat(Chat chat) {
    chats = [];
    chats!.add(chat);
  }

  OwlUser({
    required this.email,
    required this.userName,
    required this.id,
    this.isOnline,
    this.friends,
    this.chats,
    this.photoUri,
    this.tokens,
  });

  OwlUser copyWith({
    String? email,
    String? userName,
    String? id,
    bool? isOnline,
    List<OwlUser>? friends,
    List<Chat>? chats,
    String? photoUri,
  }) {
    return OwlUser(
      email: email ?? this.email,
      userName: userName ?? this.userName,
      id: id ?? this.id,
      isOnline: isOnline ?? this.isOnline,
      friends: friends ?? this.friends,
      chats: chats ?? this.chats,
      photoUri: photoUri ?? this.photoUri,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'userName': userName,
      'id': id,
      'isOnline': isOnline,
      'friends': friends?.map((x) => x.toMap()).toList(),
      'chats': chats?.map((x) => x.toMap()).toList(),
      'photoUri': photoUri,
      'tokens': tokens,
    };
  }

  String toJson() => json.encode(toMap());

  factory OwlUser.fromMap(Map<String, dynamic> map) {
    return OwlUser(
      email: map['email'],
      userName: map['userName'],
      id: map['id'],
      isOnline: map['isOnline'],
      // friends: List<OwlUser>.from(
      //   map['friends']?.map((x) => OwlUser.fromMap(x)),
      // ),
      // chats: List<Chat>.from(map['chats']?.map((x) => Chat.fromMap(x))),
      photoUri: map['photoUri'],
      //  tokens: map['tokens'],
    );
  }

  factory OwlUser.fromJson(String source) => OwlUser.fromMap(json.decode(source));
}
