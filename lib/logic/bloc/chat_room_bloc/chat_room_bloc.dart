// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:owl_chat/data/data_controller/message_control/message_control.dart';
import 'package:owl_chat/data/models/chats/chat.dart';
import 'package:owl_chat/logic/bloc/message_bloc/message_bloc.dart';
import 'package:owl_chat/logic/event_handler/user_state.dart';

part 'chat_room_event.dart';
part 'chat_room_state.dart';

part 'chat_room_bloc.freezed.dart';

class ChatRoomBloc extends Bloc<ChatRoomEvent, ChatRoomState> {
  ChatRoomBloc() : super(ChatRoomState.init()) {
    on<ChatRoomEvent>((event, emit) async {
      await event.map(
        ///
        loadAnimation: (LoadAnimation value) {
          emit(state.copyWith(isLoading: value.load));
        },

        ///
        loadChatsRoom: (LoadChatRoom value) async {
          add(const LoadAnimation(load: true));

          await emit.forEach<List<Chat>>(
            _control.getUserChatsRoom(),
            onData: (chats) {
              final _chats = chats.where((e) {
                return e.id.contains(UserState().userId);
              }).toList();

              emit(
                state.copyWith(
                  chats: _chats,
                  isLoading: false,
                ),
              );

              return state.copyWith(
                chats: _chats,
                isLoading: false,
              );
            },
          );
          add(const LoadChatsData());
        },

        ///
        loadChatsData: (LoadChatsData value) {
          final user = UserState();

          final List<MessageBloc> blocs = [];

          for (final chat in state.chats) {
            blocs.add(
              MessageBloc()
                ..add(
                  OpenChat(
                    chatId: chat.id,
                    receiver: user.otherId(chat),
                    sender: user.userId,
                  ),
                )
                ..add(UpdateChat(chat: chat)),
            );
          }
          emit(state.copyWith(chatRoomData: blocs));
        },

        ///
      );
    });
  }

  final _control = MessageControl();
}
