part of 'send_message_form_bloc.dart';

@freezed
abstract class SendMessageFormState with _$SendMessageFormState {
  const factory SendMessageFormState({
    required MessageModel message,
    required bool isEdit,
    required bool isReply,
    required bool isForward,
    required bool isGif,
  }) = _SendMessageFormState;

  factory SendMessageFormState.initial({required Chat chat}) => SendMessageFormState(
        isEdit: false,
        isForward: false,
        isReply: false,
        isGif: false,
        message: MessageModel(
          receiver: UserState().otherId(chat),
          sender: UserState().userId,
          text: '',
          time: DateTime.now(),
          chatId: chat.id,
        ),
      );
}
