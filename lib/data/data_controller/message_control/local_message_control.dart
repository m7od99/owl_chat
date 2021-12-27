// ignore_for_file: avoid_print

import 'package:hive/hive.dart';
import 'package:owl_chat/data/models/app/data_contract.dart';
import 'package:owl_chat/data/models/app/source_type.dart';
import 'package:owl_chat/data/models/chats/message_model.dart';

class LocalMessageControl extends MessageControlContract<MessageModel> {
  LocalMessageControl({required this.chatId});

  final String chatId;

  int index = 0;
//<String , T>
  late Box _chatBox;

  Future<void> ready() async {
    index = 0;
    _chatBox = await Hive.openBox(chatId);
  }

  @override
  Future addMessage(MessageModel message, String chatId) async {
    await _chatBox.putAt(index, message.toJson());
    index += 1;
  }

  @override
  Future deleteMessage(MessageModel message) async {
    await _chatBox.delete(message.time.toIso8601String());
  }

  @override
  Stream<List<MessageModel>> getMessages(String chatId) async* {
    final List<MessageModel> messages = [];
    for (int i = 0; i < index; i++) {
      messages.add(getMessage(i));
    }
    yield messages;
  }

  @override
  SourceType get type => SourceType.local;

  @override
  Future updateMessage(MessageModel message) async {
    await _chatBox.put(message.time.toIso8601String(), message.toJson());
  }

  MessageModel getMessage(int index) {
    return MessageModel.fromJson(_chatBox.getAt(index) as Map<String, dynamic>);
  }

  Future addChatMessages(List<MessageModel> messages) async {
    for (final message in messages) {
      await addMessage(message, chatId);
    }
  }

  Future clearData() async {
    await _chatBox.clear();
  }
}
