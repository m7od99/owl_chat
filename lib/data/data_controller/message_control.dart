import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/data/models/message.dart';

class MessageControl extends ChangeNotifier {
  final _firestore = FirebaseFirestore.instance;

  Stream<QuerySnapshot> getMessages(String chatId) {
    return _firestore
        .collection('messages/$chatId/messages')
        .orderBy('time')
        .snapshots();
  }

  Future<void> sendMessage(Message message, String chatId) async {
    await _firestore
        .collection('messages/$chatId/messages')
        .add(message.toMap())
        .catchError((e) {
      print(e);
    }).then((value) => print('message send'));
  }
}
