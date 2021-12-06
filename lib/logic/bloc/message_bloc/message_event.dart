part of 'message_bloc.dart';

abstract class MessageEvent extends Equatable {
  const MessageEvent();

  @override
  List<Object> get props => [];
}

class OnWriteEvent extends MessageEvent {}

class OnSendLocalEvent extends MessageEvent {}

class OnSendOnlineEvent extends MessageEvent {}

class OnReceiveEvent extends MessageEvent {}

class OnSeenEvent extends MessageEvent {}
