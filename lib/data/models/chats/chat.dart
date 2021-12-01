import 'dart:convert';
import 'dart:core';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:owl_chat/data/models/auth/user.dart';

class Chat {
  final String id;
  OwlUser? me;
  OwlUser? other;
  String? lastMessage;
  String? name;
  String? photoUri;
  Timestamp? time;

  Chat({
    required this.id,
    this.lastMessage,
    this.name,
    this.photoUri,
    this.time,
    required this.other,
    required this.me,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'me': me?.toMap(),
      'other': other?.toMap(),
      'lastMessage': lastMessage,
      'name': name,
      'photoUri': photoUri,
      'time': time,
    };
  }

  factory Chat.fromMap(Map<String, dynamic> map) {
    return Chat(
      id: map['id'] as String,
      me: OwlUser.fromMap(map['me'] as Map<String, dynamic>),
      other: OwlUser.fromMap(map['other'] as Map<String, dynamic>),
      lastMessage: map['lastMessage'] as String?,
      name: map['name'] as String?,
      photoUri: map['photoUri'] as String?,
      time: map['time'] as Timestamp?,
    );
  }

  String toJson() => json.encode(toMap());

  factory Chat.fromJson(String source) =>
      Chat.fromMap(json.decode(source) as Map<String, dynamic>);
}
