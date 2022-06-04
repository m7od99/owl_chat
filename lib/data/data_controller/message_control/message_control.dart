// ignore_for_file: cast_nullable_to_non_nullable, depend_on_referenced_packages

import 'dart:developer';

import 'package:async/async.dart' show StreamGroup;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
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
    final List<Stream<QuerySnapshot>> streams = [];
    final newMessages = _firestore
        .collection('messages')
        .doc(chatId)
        .collection('messages')
        .where('time', isGreaterThan: time)
        .snapshots(includeMetadataChanges: true);

    final updatedMessages = _firestore
        .collection('messages')
        .doc(chatId)
        .collection('messages')
        .where('isEdited', isEqualTo: true)
        .snapshots(includeMetadataChanges: true);

    streams.add(newMessages);
    streams.add(updatedMessages);

    final Stream<QuerySnapshot> results = StreamGroup.merge(streams);

    return results.map((snapshot) {
      return snapshot.docs.reversed.map<MessageModel>((docs) {
        final isLocal = docs.metadata.hasPendingWrites;
        final message = MessageModel.fromJson(docs.data() as Map<String, dynamic>);

        return message.copyWith(
          id: docs.id,
          chatId: chatId,
          isSend: !isLocal,
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

  Future<DocumentReference> sendMessageModel(MessageModel message, String chatId) async {
    return _firestore.collection('messages').doc(chatId).collection('messages').add(
          message.toJson()
            ..update(
              'time',
              (value) => FieldValue.serverTimestamp(),
            ),
        );
  }

  ///create a new chat room
  Future<void> createChat(Chat chat) async {
    await _firestore
        .collection('messages')
        .doc(chat.id)
        .set(chat.toJson())
        .catchError((e) {
      log(e.toString());
    }).then((value) => log('chat room is created'));
  }

  ///update chat states in database
  Future<void> updateChatState(Chat chat) async {
    await _firestore
        .collection('messages')
        .doc(chat.id)
        .update(chat.toJson())
        .then((value) => log('chat room is updated'));
  }

  Future addNewChatToUser(String userId, Chat chat) async {
    await _firestore
        .collection('users')
        .doc(userId)
        .collection('chats')
        .add(chat.toJson());
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
      return Chat.fromJson(docs.data()!);
    }
    return null;
  }

  Future<List<MessageModel>> getMessagesStreamBack(String chatId) async {
    late Stream<List<MessageModel>> messages;
    late List<MessageModel> m;

    messages = await compute(getMessagesStream, chatId);

    messages.listen((data) {
      m = data;
    });
    return m;
  }

  Stream<List<MessageModel>> getMessagesStream(String chatId) {
    return getMessages(chatId).map((snapshot) {
      return snapshot.docs.reversed.map<MessageModel>((docs) {
        final isLocal = docs.metadata.hasPendingWrites;

        final message = MessageModel.fromJson(docs.data() as Map<String, dynamic>);

        return message.copyWith(
          id: docs.id,
          chatId: chatId,
          isSend: !isLocal,
          isMe: isMe(message.sender),
        );
      }).toList();
    });
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

  updateLastMessage(String chatId, String lastMessage, Timestamp time) async {
    await _firestore.collection('messages').doc(chatId).update({
      'lastMessage': lastMessage,
      'time': time,
    });
  }

  Stream<List<Chat>> getUserChatsRoom() {
    return _firestore
        .collection('messages')
        //    .where('id', arrayContains: _user.currentUser!.uid)
        .orderBy('time', descending: true)
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((data) => Chat.fromJson(data.data())).toList();
    });
  }
}
