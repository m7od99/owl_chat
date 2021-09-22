import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/data/models/chat.dart';
import 'package:owl_chat/data/models/message.dart';

class MessageControl extends ChangeNotifier {
  final _firestore = FirebaseFirestore.instance;
  final _user = FirebaseAuth.instance;

  ///get messages from specific chat room
  Stream<QuerySnapshot> getMessages(String chatId) {
    return _firestore
        .collection('messages')
        .doc(chatId)
        .collection('messages')
        .orderBy('time')
        .snapshots();
  }

  ///send message to specific chat room
  Future<void> sendMessage(Message message, String chatId) async {
    await _firestore
        .collection('messages')
        .doc(chatId)
        .collection('messages')
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

  Future addNewChatToUser(String userId, Chat chat) async {
    await _firestore
        .collection('users')
        .doc(userId)
        .collection('chats')
        .add(chat.toMap());
  }

  Future<Stream<QuerySnapshot<Map<String, dynamic>>>> getUserChats(
    String userId,
  ) async {
    return _firestore
        .collection('users')
        .doc(userId)
        .collection('chats')
        .snapshots();
  }

  ///get user chats
  Stream<QuerySnapshot<Map<String, dynamic>>> getChats(String userId) {
    print('id is ${_firestore.collection('messages').id}');

    return _firestore
        .collection('messages')
        // .where('id', arrayContains: _user.currentUser!.uid)
        .orderBy('time', descending: true)
        .snapshots();
  }

  bool isMe(String id) {
    if (id == _user.currentUser!.uid) {
      return true;
    } else {
      return false;
    }
  }
}
