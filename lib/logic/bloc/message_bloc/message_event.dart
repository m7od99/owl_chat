part of 'message_bloc.dart';

@freezed
class MessageEvent with _$MessageEvent {
  const factory MessageEvent.writeMessage({
    required String text,
  }) = WriteMessage;

  const factory MessageEvent.openChat({
    required String chatId,
    required String sender,
    required String receiver,
  }) = OpenChat;

  const factory MessageEvent.sendMessage({required Chat chat}) = SendMessage;

  const factory MessageEvent.onSend({
    required bool isSend,
  }) = OnSend;

  const factory MessageEvent.onSeen({
    required String id,
  }) = OnSeen;

  const factory MessageEvent.loadChatRoomMessages() = LoadChatRoomMessages;

  const factory MessageEvent.addMessage({
    required MessageModel message,
  }) = AddMessage;

  const factory MessageEvent.removeMessage({
    required String messageId,
  }) = RemoveMessage;

  const factory MessageEvent.updateChatRoomMessages({
    required List<MessageModel> messages,
  }) = UpdateChatRoomMessages;

  const factory MessageEvent.updateMessage({
    required MessageModel message,
  }) = UpdateMessage;

  const factory MessageEvent.replyMessage({
    required MessageModel message,
  }) = ReplyMessage;

  const factory MessageEvent.forwardMessage({
    required MessageModel message,
    required String chatId,
  }) = ForwardMessage;

  const factory MessageEvent.editMessage({
    required MessageModel message,
  }) = EditMessage;

  const factory MessageEvent.clearMessage() = ClearMessage;
  const factory MessageEvent.cancelEdit() = CancelEdit;
  const factory MessageEvent.cancelReply() = CancelReply;
  const factory MessageEvent.cancelForward() = CancelForward;
  const factory MessageEvent.updateChatState({required Chat chat}) = UpdateChatState;

  const factory MessageEvent.updateChat({required Chat chat}) = UpdateChat;

  const factory MessageEvent.sendGif({required Chat chat}) = SendGif;

  const factory MessageEvent.closeChat() = CloseChat;
}
