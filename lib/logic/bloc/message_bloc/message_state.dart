part of 'message_bloc.dart';

@freezed
class MessageState with _$MessageState {
  const factory MessageState.initial() = Initial;

  const factory MessageState.loadProgress() = LoadProgress;

  const factory MessageState.loaded({
    required List<MessageModel> messages,
    required int newMessages,
  }) = Loaded;
}
