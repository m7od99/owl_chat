// ignore_for_file: depend_on_referenced_packages

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:owl_chat/data/data_controller/message_control.dart';
import 'package:owl_chat/data/data_controller/user_control.dart';
import 'package:owl_chat/data/models/chats/chat.dart';
import 'package:owl_chat/data/models/chats/message_model.dart';
import 'package:owl_chat/logic/controller/fcm_notifications.dart';

part 'message_bloc.freezed.dart';
part 'message_bloc.g.dart';
part 'message_event.dart';
part 'message_state.dart';

class MessageBloc extends HydratedBloc<MessageEvent, MessageState> {
  MessageBloc() : super(MessageState.init()) {
    on<MessageEvent>((event, emit) async {
      await event.map(
        ///
        loadChatRoomMessages: (LoadChatRoomMessages value) async {
          await emit.forEach<List<MessageModel>>(
            _control.getMessagesStream(state.chatId),
            onData: (messages) {
              final _messages = messages.map((m) {
                return m.copyWith(isMe: _control.isMe(m.sender));
              }).toList();

              final _order = _messages
                ..sort((a, b) => b.time.compareTo(a.time))
                ..reversed;

              add(UpdateChatRoomMessages(messages: _order));
              return state;
            },
          );
        },

        ///
        openChat: (OpenChat value) {
          add(const LoadChatRoomMessages());
          emit(
            state.copyWith(
              chatId: value.chatId,
              message: state.message.copyWith(
                receiver: value.receiver,
                sender: value.sender,
              ),
              messages: state.messages,
              isEdit: false,
              isForward: false,
              isReply: false,
            ),
          );
        },

        ///
        addMessage: (AddMessage value) {},

        ///
        updateChatRoomMessages: (UpdateChatRoomMessages value) {
          emit(state.copyWith(messages: value.messages));
        },

        ///
        editMessage: (EditMessage value) {
          emit(state.copyWith(isEdit: true, message: value.message));
        },

        ///
        forwardMessage: (ForwardMessage value) {},
        onSeen: (OnSeen value) async {},

        ///
        onSend: (OnSend value) {
          emit(state.copyWith(message: state.message.copyWith(isSend: value.isSend)));
        },

        removeMessage: (RemoveMessage value) {},

        ///
        replyMessage: (ReplyMessage value) {},

        ///
        sendMessage: (SendMessage value) async {
          if (!state.isEdit) {
            emit(
              state.copyWith(
                message: state.message.copyWith(
                  time: DateTime.now(),
                ),
              ),
            );
            final isSend = await _control.sendMessageModel(state.message, state.chatId);
            add(OnSend(isSend: isSend));

            add(UpdateChatState(chat: value.chat));

            FCMNotifications.instance.send(
              body: state.message.text,
              title: _user.userName,
              toUserId: _user.otherId(value.chat),
              chatId: value.chat.id,
            );
          }
          if (state.isEdit) {
            emit(
              state.copyWith(
                message: state.message.copyWith(
                  chatId: state.chatId,
                  isEdited: true,
                ),
              ),
            );
            add(UpdateMessage(message: state.message));
            add(const CancelEdit());
          }
          add(const ClearMessage());
        },

        ///
        writeMessage: (WriteMessage value) {
          emit(
            state.copyWith(
              message: state.message.copyWith(
                text: value.text,
              ),
            ),
          );
        },

        ///
        clearMessage: (ClearMessage value) {
          emit(
            state.copyWith(
              message: state.message.copyWith(
                text: '',
                isEdited: false,
                isGif: false,
                isReplyMessage: false,
                isSend: null,
                isSeen: null,
                forwardMessage: false,
              ),
              isEdit: false,
              isForward: false,
              isReply: false,
            ),
          );
        },

        ///
        updateMessage: (UpdateMessage value) {
          _control.updateMessage(value.message);
        },

        ///
        cancelForward: (CancelForward value) {
          emit(state.copyWith(isForward: false));
        },

        ///
        cancelEdit: (CancelEdit value) {
          emit(state.copyWith(isEdit: false));
          add(const ClearMessage());
        },

        ///
        cancelReply: (CancelReply value) {
          emit(state.copyWith(isReply: false));
        },

        ///
        updateChatState: (UpdateChatState value) async {
          final chat = value.chat;
          chat.lastMessage = state.message.text;
          chat.time = Timestamp.fromDate(state.message.time);
          await _control.updateChatState(chat);
        },
      );
    });
  }

  final _control = MessageControl();
  final _user = UserControl();

  @override
  MessageState? fromJson(Map<String, dynamic> json) {
    return MessageState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(MessageState state) {
    return state.toJson();
  }
}
