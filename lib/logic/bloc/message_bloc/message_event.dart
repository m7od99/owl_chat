part of 'message_bloc.dart';

@freezed
class MessageEvent with _$MessageEvent {
  const factory MessageEvent.messagesReceived() = MessagesReceived;

  const factory MessageEvent.onSeen({
    required int index,
  }) = OnSeen;
}
