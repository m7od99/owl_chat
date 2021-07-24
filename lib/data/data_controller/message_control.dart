import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/data/models/message.dart';

class MessageControl extends ChangeNotifier {
  final _firestore = FirebaseFirestore.instance;

  Stream<QuerySnapshot> getMessages(String yourEmail, String yourFriend) {
    return _firestore
        .collection('messages')
        .doc(yourEmail)
        .collection(yourFriend)
        .orderBy('time')
        .snapshots();
  }

  Future<void> sendMessage(Message message) async {
    await _firestore
        .collection('messages')
        .doc(message.receiver)
        .collection(message.sender)
        .add(message.toMap())
        .catchError((e) {
      print(e);
    });
  }
}
