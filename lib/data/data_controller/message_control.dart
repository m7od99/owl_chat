import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/data/models/chat.dart';
import 'package:owl_chat/data/models/message.dart';

class MessageControl extends ChangeNotifier {
  final _firestore = FirebaseFirestore.instance;

  ///get messages from specific chat room
  Stream<QuerySnapshot> getMessages(String chatId) {
    return _firestore
        .collection('messages/$chatId/messages')
        .orderBy('time')
        .snapshots();
  }

  ///send message to specific chat room
  Future<void> sendMessage(Message message, String chatId) async {
    await _firestore
        .collection('messages/$chatId/messages')
        .add(message.toMap())
        .catchError((e) {
      print(e);
    }).then((value) => print('message send $value'));
  }

  ///create a new chat room with unique id
  Future<void> createChat(Chat chat) async {
    await _firestore
        .collection('messages')
        .doc(chat.id)
        .set(chat.toMap())
        .catchError((e) {
      print(e);
    }).then((value) => print('chat room is created'));
  }
}
