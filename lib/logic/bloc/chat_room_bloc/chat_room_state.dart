part of 'chat_room_bloc.dart';

@freezed
class ChatRoomState with _$ChatRoomState {
  const factory ChatRoomState({
    required List<Chat> chats,
    required bool isLoading,
    required List<MessageBloc> chatRoomData,
  }) = _ChatRoomState;

  factory ChatRoomState.init() => const ChatRoomState(
        chats: [],
        isLoading: true,
        chatRoomData: <MessageBloc>[],
      );
}
