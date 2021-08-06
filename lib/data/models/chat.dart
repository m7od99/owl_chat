import 'dart:convert';

import 'package:equatable/equatable.dart';

class Chat extends Equatable {
  final String id;
  String lastMessage;
  String name;
  String photoUri;
  String time;

  Chat({
    required this.id,
    required this.lastMessage,
    required this.name,
    required this.photoUri,
    required this.time,
  });

  Chat copyWith({
    String? id,
    String? lastMessage,
    String? name,
    String? photoUri,
    String? time,
  }) {
    return Chat(
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

  factory Chat.fromMap(Map<String, dynamic> map) {
    return Chat(
      id: map['id'],
      lastMessage: map['lastMessage'],
      name: map['name'],
      photoUri: map['photoUri'],
      time: map['time'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Chat.fromJson(String source) => Chat.fromMap(json.decode(source));

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
