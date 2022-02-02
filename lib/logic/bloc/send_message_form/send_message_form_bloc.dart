// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:owl_chat/data/data_controller/message_control/message_control.dart';
import 'package:owl_chat/data/data_controller/user_control.dart';
import 'package:owl_chat/data/models/chats/chat.dart';
import 'package:owl_chat/data/models/chats/message_model.dart';
import 'package:owl_chat/logic/controller/fcm_notifications.dart';
import 'package:owl_chat/logic/event_handler/user_state.dart';

part 'send_message_form_event.dart';
part 'send_message_form_state.dart';
part 'send_message_form_bloc.freezed.dart';

class SendMessageFormBloc extends Bloc<SendMessageFormEvent, SendMessageFormState> {
  final Chat chat;

  SendMessageFormBloc({required this.chat}) : super(SendMessageFormState.initial(chat: chat)) {
    ///event handler ,
    on<SendMessageFormEvent>((event, emit) async {
      ///
      await event.map(
        ///
        cancelForward: (_CancelForward value) {
          emit(
            state.copyWith(
              isForward: false,
              message: state.message.copyWith(forwardMessage: null),
            ),
          );
        },

        ///
        cancelReply: (_CancelReply value) {
          emit(
            state.copyWith(
              isReply: false,
              message: state.message.copyWith(isReplyMessage: null),
            ),
          );
        },

        ///
        editMessage: (_EditMessage value) {
          emit(
            state.copyWith(
              isEdit: true,
              message: value.message.copyWith(isEdited: true),
            ),
          );
        },

        ///
        forwardMessage: (_ForwardMessage value) {
          emit(
            state.copyWith(
              isForward: true,
              message: state.message.copyWith(forwardMessage: true),
            ),
          );
        },

        ///
        replyMessage: (_ReplyMessage value) {
          emit(
            state.copyWith(
              isReply: true,
              message: state.message.copyWith(isReplyMessage: true),
            ),
          );
        },

        ///
        sendGif: (SendGif value) {
          emit(
            state.copyWith(
              isGif: true,
              message: state.message.copyWith(isGif: true),
            ),
          );
          add(const SendMessageFormEvent.sendMessage());
        },

        ///
        sendMessage: (_SendMessage value) async {
          /// if new message , text should be not empty
          if (!state.isEdit && state.message.text.isNotEmpty && !state.isGif) {
            _control.sendMessageModel(state.message, chat.id);

            FCMNotifications.instance.send(
              body: state.message.text,
              chatId: chat.id,
              messageId: 1,
              title: _user.userName,
              toUserId: chatWith,
            );

            _control.updateChatState(
              chat.copyWith(lastMessage: state.message.text, time: Timestamp.now()),
            );
          }

          ///
          if (state.isGif) {
            await _control.sendMessageModel(state.message, chat.id);

            _control.updateChatState(
              chat.copyWith(lastMessage: 'gif', time: Timestamp.now()),
            );

            FCMNotifications.instance.send(
              body: 'gif',
              chatId: chat.id,
              messageId: chat.id.hashCode,
              title: _user.userName,
              toUserId: chatWith,
            );
          }

          ///
          if (state.isEdit) {
            _control.updateMessage(
              state.message,
            );

            add(const SendMessageFormEvent.cancelEdit());
          }

          ///

          add(const SendMessageFormEvent.clearMessage());
        },

        ///
        updateMessage: (_UpdateMessage value) {},

        ///
        updateText: (_UpdateText value) {
          emit(
            state.copyWith(
              message: state.message.copyWith(
                text: value.text,
              ),
            ),
          );
        },

        ///
        cancelEdit: (_CancelEdit value) {
          emit(
            state.copyWith(
              isEdit: false,
              message: state.message.copyWith(isEdited: null),
            ),
          );
        },

        ///
        clearMessage: (_ClearMessage value) {
          emit(
            state.copyWith(
              isEdit: false,
              isGif: false,
              isForward: false,
              isReply: false,
              message: MessageModel(
                receiver: chatWith,
                sender: _user.userId,
                text: '',
                chatId: chat.id,
                time: DateTime.now(),
              ),
            ),
          );
        },
      );
    });
  }
  final _user = UserControl();
  final _control = MessageControl();

  String get chatWith => _user.otherId(chat);
}
