// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:owl_chat/data/data_controller/message_control.dart';
import 'package:owl_chat/data/models/chats/message_model.dart';

part 'message_event.dart';
part 'message_state.dart';

part 'message_bloc.freezed.dart';
part 'message_bloc.g.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  MessageBloc() : super(MessageState.init()) {
    on<MessageEvent>((event, emit) async {
      await event.map(
        ///
        loadMessages: (LoadMessages value) async {
          await emit.forEach<List<MessageModel>>(
            _control.getMessagesStream(state.chatId),
            onData: (messages) {
              add(UpdateMessages(messages: messages));
              return state;
            },
          );
        },

        ///
        openChat: (OpenChat value) {
          add(const LoadMessages());
          emit(
            state.copyWith(
              chatId: value.chatId,
              message: state.message.copyWith(
                receiver: value.receiver,
                sender: value.sender,
              ),
              messages: state.messages,
            ),
          );
        },

        ///
        addMessage: (AddMessage value) {},

        ///
        updateMessages: (UpdateMessages value) {
          emit(state.copyWith(messages: value.messages));
        },

        ///
        editMessage: (EditMessage value) {},
        forwardMessage: (ForwardMessage value) {},
        onSeen: (OnSeen value) {},
        onSend: (OnSend value) {},

        removeMessage: (RemoveMessage value) {},
        replyMessage: (ReplyMessage value) {},
        sendMessage: (SendMessage value) {},

        writeMessage: (WriteMessage value) {},
      );
    });
  }

  final _control = MessageControl();

  // @override
  // MessageState? fromJson(Map<String, dynamic> json) {
  //   return MessageState.fromJson(json);
  // }

  // @override
  // Map<String, dynamic>? toJson(MessageState state) {
  //   return state.toJson();
  // }
}
