part of 'chat_room_bloc.dart';

@freezed
class ChatRoomState with _$ChatRoomState {
  const factory ChatRoomState({
    required List<Chat> chats,
    required bool isLoading,
  }) = _ChatRoomState;

  factory ChatRoomState.fromJson(Map<String, dynamic> json) => _$ChatRoomStateFromJson(json);

  factory ChatRoomState.init() => const ChatRoomState(
        chats: [],
        isLoading: true,
      );
}
