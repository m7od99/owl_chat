part of 'message_bloc.dart';

@freezed
abstract class MessageState with _$MessageState {
  const factory MessageState({
    required String chatId,
    required MessageModel message,
    required List<MessageModel> messages,
    required bool isEdit,
    required bool isReply,
    required bool isForward,
    required Chat chat,
    required bool loadingMessages,
  }) = _MessageState;

  factory MessageState.fromJson(Map<String, dynamic> json) => _$MessageStateFromJson(json);

  factory MessageState.init() => MessageState(
        message: MessageModel(
          receiver: '',
          sender: '',
          text: '',
          isMe: true,
          time: DateTime.now(),
        ),
        messages: [],
        chatId: '',
        isEdit: false,
        isForward: false,
        isReply: false,
        loadingMessages: false,
        chat: Chat(
          id: '',
          me: OwlUser(email: '', id: '', userName: ''),
          other: OwlUser(email: '', id: '', userName: ''),
        ),
      );
}
