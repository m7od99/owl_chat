import 'package:owl_chat/data/data_controller/message_control/message_control.dart';
import 'package:owl_chat/data/models/app/data_contract.dart';
import 'package:owl_chat/data/models/app/source_type.dart';
import 'package:owl_chat/data/models/chats/message_model.dart';

class FirebaseMessageControl extends MessageControlContract<MessageModel> {
  final _messagesControl = MessageControl();

  @override
  Future addMessage(MessageModel message, String chatId) async {
    await _messagesControl.sendMessageModel(message, chatId);
  }

  @override
  Future deleteMessage(MessageModel message) {
    // TODO: implement deleteMessage
    throw UnimplementedError();
  }

  @override
  Stream<List<MessageModel>> getMessages(String chatId) {
    return _messagesControl.getMessagesStream(chatId);
  }

  @override
  SourceType get type => SourceType.remote;

  @override
  Future updateMessage(MessageModel message) async {
    await _messagesControl.updateMessage(message);
  }

  Stream<List<MessageModel>> getMessageWhere(String chatId, int time) {
    return _messagesControl.getMessagesWhere(chatId, time);
  }
}
