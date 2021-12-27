import 'package:owl_chat/data/models/app/source_type.dart';

abstract class MessageControlContract<T> {
  /// the type of massages
  SourceType get type;

  /// to send new message
  Future addMessage(T message, String chatId);

  ///get all messages of chat room
  Stream<List<T>> getMessages(String chatId);

  /// to update messages
  Future updateMessage(T message);

  /// to delete message
  Future deleteMessage(T message);
}

abstract class ChatControlContract<T> {
  Future createChat(T chat);
  Future<List<T>> getChats(String userId);
  Future<T> getChat(String chatId);
  Future updateChat(T chat);
  Future deleteChat(T chat);
}

abstract class UserControlContract<T> {
  Future saveUser(T user);
  Future updateUser(T user);
  Future<T> getUser(String userId);
}
