part of 'chat_room_bloc.dart';

@freezed
abstract class ChatRoomEvent with _$ChatRoomEvent {
  const factory ChatRoomEvent.loadChatsRoom() = LoadChatRoom;
  const factory ChatRoomEvent.loadAnimation({required bool load}) = LoadAnimation;
}