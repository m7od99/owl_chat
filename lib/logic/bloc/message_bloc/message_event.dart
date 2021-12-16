part of 'message_bloc.dart';

abstract class MessageEvent extends Equatable {
  const MessageEvent();

  @override
  List<Object> get props => [];
}

class OpenChatRoom extends MessageEvent {
  const OpenChatRoom({
    required this.sender,
    required this.receiver,
    required this.chatRoomId,
  });

  final String sender;
  final String receiver;
  final String chatRoomId;
}

class WriteMessage extends MessageEvent {
  const WriteMessage({
    required this.text,
  });

  final String text;
}

class SendLocalMessage extends MessageEvent {}

class SendOnlineMessage extends MessageEvent {}

class LoadMessage extends MessageEvent {}

class SeenMessage extends MessageEvent {}

class EditMessage extends MessageEvent {}

class CopyMessage extends MessageEvent {}

class DeleteMessage extends MessageEvent {}

class ForwardMessage extends MessageEvent {}

class ReplayMessage extends MessageEvent {}
