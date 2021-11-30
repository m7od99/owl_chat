import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart' as intl;

import '../../data/data_controller/message_control.dart';
import '../../data/models/chats/chat.dart';
import '../../data/models/chats/message.dart';
import '../../data/models/chats/messages_type.dart';
import 'user_state.dart';

// handler input message from user here
class SendMessageState extends ChangeNotifier {
  String _textMessage = '';
  final UserState _user = UserState();
  final MessageControl _messageControl = MessageControl();

  String get message => _textMessage;

  void updateMessage(String message) {
    _textMessage = rtlFormat(message);
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
    if (chat.lastMessage.isNotEmpty) {
      chat.time = Timestamp.now();
      await _messageControl.updateChatState(chat);
      clearMessage();
    }
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

  String rtlFormat(String text) {
    if (intl.Bidi.startsWithRtl(text)) {
      return intl.Bidi.enforceRtlInText(text);
    } else if (intl.Bidi.startsWithLtr(text)) {
      return intl.Bidi.enforceLtrInText(text);
    } else if (intl.Bidi.detectRtlDirectionality(text)) {
      return intl.Bidi.enforceRtlInText(text);
    }
    return text;
  }
}
