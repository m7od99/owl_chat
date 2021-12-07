part of 'message_bloc.dart';

abstract class MessageEvent extends Equatable {
  const MessageEvent();

  @override
  List<Object> get props => [];
}

class WriteMessage extends MessageEvent {}

class SendLocalMessage extends MessageEvent {}

class SendOnlineMessage extends MessageEvent {}

class ReceiveMessage extends MessageEvent {}

class SeenMessage extends MessageEvent {}

class EditMessage extends MessageEvent {}

class CopyMessage extends MessageEvent {}

class DeleteMessage extends MessageEvent {}

class ForwardMessage extends MessageEvent {}

class ReplayMessage extends MessageEvent {}
