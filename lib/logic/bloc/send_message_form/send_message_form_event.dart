part of 'send_message_form_bloc.dart';

@freezed
abstract class SendMessageFormEvent with _$SendMessageFormEvent {
  const factory SendMessageFormEvent.updateText({
    required String text,
  }) = _UpdateText;

  const factory SendMessageFormEvent.sendMessage() = _SendMessage;

  const factory SendMessageFormEvent.editMessage({
    required MessageModel message,
  }) = _EditMessage;

  const factory SendMessageFormEvent.sendGif() = SendGif;

  const factory SendMessageFormEvent.updateMessage({
    required MessageModel message,
  }) = _UpdateMessage;

  const factory SendMessageFormEvent.replyMessage({
    required MessageModel message,
    required int messageIndex,
  }) = _ReplyMessage;

  const factory SendMessageFormEvent.forwardMessage({
    required MessageModel message,
    required Chat chat,
  }) = _ForwardMessage;

  const factory SendMessageFormEvent.cancelEdit() = _CancelEdit;

  const factory SendMessageFormEvent.cancelReply() = _CancelReply;

  const factory SendMessageFormEvent.cancelForward() = _CancelForward;

  const factory SendMessageFormEvent.clearMessage() = _ClearMessage;
}
