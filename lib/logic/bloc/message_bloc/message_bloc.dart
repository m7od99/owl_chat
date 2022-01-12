// ignore_for_file: depend_on_referenced_packages

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:owl_chat/data/data_controller/message_control/message_control.dart';
import 'package:owl_chat/data/models/chats/chat.dart';
import 'package:owl_chat/data/models/chats/message_model.dart';

part 'message_bloc.freezed.dart';
part 'message_event.dart';
part 'message_state.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  final Chat chat;

  MessageBloc({required this.chat}) : super(const MessageState.initial()) {
    on<MessageEvent>(
      (event, emit) async {
        await event.map(
          ///
          messagesReceived: (MessagesReceived value) async {
            await emit.forEach<List<MessageModel>>(
              _control.getMessagesStream(chat.id),
              onData: (data) {
                final _order = data
                  ..sorted((a, b) => a.time.compareTo(b.time))
                  ..reversed;

                return MessageState.loaded(messages: _order);
              },
            );
          },

          ///when user see the messages that send by the other user
          //update message isSeen to true
          onSeen: (OnSeen value) {
            state.map(
              loaded: (Loaded loaded) {
                final messages = loaded.messages;

                if (!messages[value.index].isMe && messages[value.index].isSeen == null) {
                  _control.updateMessage(
                    messages[value.index].copyWith(isSeen: true),
                  );
                }
              },

              //if state is not loaded yet dont do any thing
              loadProgress: (LoadProgress value) => null,
              initial: (Initial value) => null,
            );
          },
        );
      },
      transformer: sequential(),
    );
    on<OnSeen>((event, emit) {
      state.map(
        initial: (Initial value) {},
        loaded: (Loaded loaded) {
          final messages = loaded.messages;

          if (!messages[event.index].isMe && messages[event.index].isSeen == null) {
            _control.updateMessage(
              messages[event.index].copyWith(isSeen: true),
            );
          }
        },
        loadProgress: (LoadProgress value) {},
      );
    });
  }

  @override
  void onEvent(MessageEvent event) {
    // TODO: implement onEvent
    super.onEvent(event);
  }

  final _control = MessageControl();
}
