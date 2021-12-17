part of 'message_bloc.dart';

@freezed
abstract class MessageState with _$MessageState {
  const factory MessageState({
    required String chatId,
    required MessageModel message,
    required List<MessageModel> messages,
  }) = _MessageState;

  factory MessageState.fromJson(Map<String, dynamic> json) =>
      _$MessageStateFromJson(json);

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
      );
}
