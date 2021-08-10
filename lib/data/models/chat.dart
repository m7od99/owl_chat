import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:owl_chat/data/models/user.dart';

class Chat {
  final String id;
  OwlUser? me;
  OwlUser? other;
  String lastMessage;
  String name;
  String photoUri;
  Timestamp time;

  Chat({
    required this.id,
    required this.lastMessage,
    required this.name,
    required this.photoUri,
    required this.time,
    this.other,
    this.me,
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
      id: map['id'],
      me: OwlUser.fromMap(map['me']),
      other: OwlUser.fromMap(map['other']),
      lastMessage: map['lastMessage'],
      name: map['name'],
      photoUri: map['photoUri'],
      time: map['time'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Chat.fromJson(String source) => Chat.fromMap(json.decode(source));
}
