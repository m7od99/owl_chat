// ignore_for_file: cast_nullable_to_non_nullable

import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/data/models/chats/message_model.dart';

import '../../models/chats/chat.dart';
import '../../models/chats/message.dart';

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

  Stream<List<MessageModel>> getMessagesWhere(String chatId, int time) {
    final newMessages = _firestore
        .collection('messages')
        .doc(chatId)
        .collection('messages')
        .where('time', isGreaterThan: time)
        .snapshots();

    return newMessages.map((snapshot) {
      return snapshot.docs.reversed.map<MessageModel>((docs) {
        final message = MessageModel.fromJson(docs.data());

        return message.copyWith(
          id: docs.id,
        );
      }).toList();
    });
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

  Future<bool> sendMessageModel(MessageModel message, String chatId) async {
    late bool isSend;
    await _firestore
        .collection('messages')
        .doc(chatId)
        .collection('messages')
        .add(message.toJson())
        .then((e) {
      isSend = true;
    }).catchError((e) {
      log(e.toString());
      isSend = false;
    });

    return isSend;
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

  Stream<List<MessageModel>> getMessagesStream(String chatId) {
    return getMessages(chatId).map((snapshot) {
      return snapshot.docs.reversed.map<MessageModel>((docs) {
        final message = MessageModel.fromJson(docs.data() as Map<String, dynamic>);

        return message.copyWith(
          id: docs.id,
        );
      }).toList();
    });
  }

  bool isOffline(String chatId) {
    late bool isOffline;
    getMessages(chatId).listen((e) {
      isOffline = e.metadata.hasPendingWrites;
    });
    return isOffline;
  }

  Future updateMessage(MessageModel message) async {
    await _firestore
        .collection('messages')
        .doc(message.chatId)
        .collection('messages')
        .doc(message.id)
        .update(message.toJson());
  }

  bool isSend(String? id) {
    if (id != null) {
      return true;
    }
    return false;
  }
}