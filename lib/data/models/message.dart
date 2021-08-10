import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class Message {
  final String sender;
  final String receiver;
  String text;
  final Timestamp time;
  bool isMe;

  Message({
    required this.sender,
    required this.receiver,
    required this.text,
    required this.time,
    required this.isMe,
  });

  Message copyWith({
    String? sender,
    String? receiver,
    String? text,
    Timestamp? time,
    bool? isMe,
  }) {
    return Message(
      sender: sender ?? this.sender,
      receiver: receiver ?? this.receiver,
      text: text ?? this.text,
      time: time ?? this.time,
      isMe: isMe ?? this.isMe,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'sender': sender,
      'receiver': receiver,
      'text': text,
      'time': time,
      'isMe': isMe,
    };
  }

  factory Message.fromMap(Map<String, dynamic> map) {
    return Message(
      sender: map['sender'],
      receiver: map['receiver'],
      text: map['text'],
      time: map['time'],
      isMe: map['isMe'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Message.fromJson(String source) => Message.fromMap(json.decode(source));
}
