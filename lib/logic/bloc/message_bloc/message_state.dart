part of 'message_bloc.dart';

class MessageState extends Equatable {
  const MessageState({
    this.message = const MessageModel(
      data: '',
      id: '',
      isSeen: false,
      isSend: false,
      receiver: '',
      sender: '',
      type: MessageType.text,
    ),
  });

  final MessageModel message;

  @override
  List<Object> get props => [message];

  MessageState copyWith({
    MessageModel? message,
  }) {
    return MessageState(
      message: message ?? this.message,
    );
  }
}
