import 'dart:convert';

import 'package:equatable/equatable.dart';

class Chats extends Equatable {
  final String id;
  final String lastMessage;
  final String name;
  final String photoUri;
  final String time;

  Chats({
    required this.id,
    required this.lastMessage,
    required this.name,
    required this.photoUri,
    required this.time,
  });

  Chats copyWith({
    String? id,
    String? lastMessage,
    String? name,
    String? photoUri,
    String? time,
  }) {
    return Chats(
      id: id ?? this.id,
      lastMessage: lastMessage ?? this.lastMessage,
      name: name ?? this.name,
      photoUri: photoUri ?? this.photoUri,
      time: time ?? this.time,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'lastMessage': lastMessage,
      'name': name,
      'photoUri': photoUri,
      'time': time,
    };
  }

  factory Chats.fromMap(Map<String, dynamic> map) {
    return Chats(
      id: map['id'],
      lastMessage: map['lastMessage'],
      name: map['name'],
      photoUri: map['photoUri'],
      time: map['time'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Chats.fromJson(String source) => Chats.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      id,
      lastMessage,
      name,
      photoUri,
      time,
    ];
  }
}
