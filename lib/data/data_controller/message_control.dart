import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../models/chats/chat.dart';
import '../models/chats/message.dart';

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

  Stream<QuerySnapshot> getChatMessages(String chatId) {
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
      log(e.toString());
    }).then((value) => log('message send $value'));
  }

  ///create a new chat room
  Future<void> createChat(Chat chat) async {
    await _firestore
        .collection('messages')
        .doc(chat.id)
        .set(chat.toMap())
        .catchError((e) {
      log(e.toString());
    }).then((value) => log('chat room is created'));
  }

  ///update chat states in database
  Future<void> updateChatState(Chat chat) async {
    await _firestore
        .collection('messages')
        .doc(chat.id)
        .update(chat.toMap())
        .then((value) => log('chat room is updated'));
  }

  Future addNewChatToUser(String userId, Chat chat) async {
    await _firestore
        .collection('users')
        .doc(userId)
        .collection('chats')
        .add(chat.toMap());
  }

  /// return stream of chats that user have
  Future<Stream<QuerySnapshot<Map<String, dynamic>>>> getUserChats(
    String userId,
  ) async {
    return _firestore.collection('users').doc(userId).collection('chats').snapshots();
  }

  ///get user chats
  Stream<QuerySnapshot<Map<String, dynamic>>> getChats(String userId) {
    log('id is ${_firestore.collection('messages').id}');

    return _firestore
        .collection('messages')
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

  Future<Chat?> getSpecificChat(
    String chatId,
  ) async {
    final docs = await _firestore.collection('messages').doc(chatId).get();
    if (docs.exists) {
      return Chat.fromMap(docs.data()!);
    }
  }
}
