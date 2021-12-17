part of 'message_bloc.dart';

@freezed
abstract class MessageEvent with _$MessageEvent {
  const factory MessageEvent.writeMessage({
    required String text,
  }) = WriteMessage;

  const factory MessageEvent.openChat({
    required String chatId,
    required String sender,
    required String receiver,
  }) = OpenChat;

  const factory MessageEvent.sendMessage() = SendMessage;

  const factory MessageEvent.onSend() = OnSend;

  const factory MessageEvent.onSeen() = OnSeen;

  const factory MessageEvent.loadMessages() = LoadMessages;

  const factory MessageEvent.addMessage({
    required MessageModel message,
  }) = AddMessage;

  const factory MessageEvent.removeMessage({
    required String messageId,
  }) = RemoveMessage;

  const factory MessageEvent.updateMessages({
    required List<MessageModel> messages,
  }) = UpdateMessages;

  const factory MessageEvent.replyMessage({
    required String messageId,
  }) = ReplyMessage;

  const factory MessageEvent.forwardMessage({
    required String messageId,
    required String chatId,
  }) = ForwardMessage;

  const factory MessageEvent.editMessage({
    required String messageId,
  }) = EditMessage;
}
