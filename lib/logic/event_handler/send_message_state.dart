import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';

import '../../data/data_controller/message_control.dart';
import '../../data/models/chat.dart';
import '../../data/models/message.dart';
import '../../data/models/messages_type.dart';
import 'user_state.dart';

// handler input message from user here
class SendMessageState extends ChangeNotifier {
  String _textMessage = '';
  final UserState _user = UserState();
  final MessageControl _messageControl = MessageControl();

  String get message => _textMessage;

  void updateMessage(String message) {
    _textMessage = message;
    notifyListeners();
  }

  void addEmoji(String emoji) {
    _textMessage += emoji;
    notifyListeners();
  }

  void clearMessage() {
    _textMessage = '';
    notifyListeners();
  }

  Future sendTextMessage({
    required String chatId,
    required String receiverId,
  }) async {
    if (_textMessage.isNotEmpty) {
      final message = await createTextMessage(receiverId);
      try {
        await _messageControl.sendMessage(message, chatId);
      } catch (e) {
        log(e.toString());
      }
    }
  }

  Future sendGif({required String chatId, required String receiverId}) async {
    if (_textMessage.isNotEmpty) {
      final message = await createGifMessage(receiverId);
      try {
        await _messageControl.sendMessage(message, chatId);
      } catch (e) {
        log(e.toString());
      }
    }
  }

  Future updateChatState(Chat chat) async {
    chat.lastMessage = _textMessage;
    chat.time = Timestamp.now();
    await _messageControl.updateChatState(chat);
    clearMessage();
  }

  Future updateChatStateGif(Chat chat) async {
    chat.lastMessage = 'gif';
    chat.time = Timestamp.now();
    await _messageControl.updateChatState(chat);
    clearMessage();
  }

  Future<Message> createTextMessage(String receiverId) async {
    final message = Message(
      isMe: true,
      receiver: receiverId,
      sender: _user.userId,
      text: _textMessage,
      time: Timestamp.now(),
      isGif: false,
      type: MessageType.text,
    );
    return message;
  }

  Future<Message> createGifMessage(String receiverId) async {
    final message = Message(
      isMe: true,
      receiver: receiverId,
      sender: _user.userId,
      text: _textMessage,
      time: Timestamp.now(),
      isGif: true,
      type: MessageType.gif,
    );
    return message;
  }
}
