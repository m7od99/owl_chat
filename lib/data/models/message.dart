import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:owl_chat/data/models/messages_type.dart';

class Message {
  final String sender;
  final String receiver;
  String text;
  final Timestamp time;
  MessageType? type;
  bool isMe;
  bool? isRead;
  bool? isSend;
  bool? isGif;

  Message({
    required this.sender,
    required this.receiver,
    required this.text,
    required this.time,
    required this.isMe,
    this.type,
    this.isRead,
    this.isSend,
    this.isGif,
  });

  Message copyWith({String? sender, String? receiver, String? text, Timestamp? time, bool? isMe, MessageType? type}) {
    return Message(
      sender: sender ?? this.sender,
      receiver: receiver ?? this.receiver,
      text: text ?? this.text,
      time: time ?? this.time,
      isMe: isMe ?? this.isMe,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'sender': sender,
      'receiver': receiver,
      'text': text,
      'time': time,
      'isMe': isMe,
      'isRead': isRead,
      'isSend': isSend,
      'isGif': isGif,
      'type': type.toString(),
    };
  }

  factory Message.fromMap(Map<String, dynamic> map) {
    return Message(
      sender: map['sender'],
      type: castType(map),
      receiver: map['receiver'],
      text: map['text'],
      time: map['time'],
      isMe: map['isMe'],
      isSend: map['isSend'],
      isRead: map['isRead'],
      isGif: map['isGif'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Message.fromJson(String source) => Message.fromMap(json.decode(source));
}

MessageType castType(Map<String, dynamic> map) {
  switch (map['type']) {
    case 'gif':
      return MessageType.gif;
    case 'text':
      return MessageType.text;
    default:
      return MessageType.text;
  }
}
