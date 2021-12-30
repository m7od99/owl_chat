// ignore_for_file: depend_on_referenced_packages

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:owl_chat/data/data_controller/message_control/message_control.dart';
import 'package:owl_chat/data/data_controller/message_control/remote_message_control.dart';
import 'package:owl_chat/data/data_controller/user_control.dart';
import 'package:owl_chat/data/models/chats/chat.dart';
import 'package:owl_chat/data/models/chats/message_model.dart';
import 'package:owl_chat/logic/controller/fcm_notifications.dart';
import 'package:owl_chat/logic/controller/message_repository.dart';

part 'message_bloc.freezed.dart';
part 'message_bloc.g.dart';
part 'message_event.dart';
part 'message_state.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  MessageBloc() : super(MessageState.init()) {
//    _localMessageControl = LocalMessageControl(chatId: state.chatId);
//    _localMessageControl.ready();

    _remoteMessage = FirebaseMessageControl();

    final _messageControl = MessageRepository([
      //    _localMessageControl,
      _remoteMessage,
    ]);

    on<MessageEvent>((event, emit) async {
      //    await _localMessageControl.clearData();
      await event.map(
        ///
        loadChatRoomMessages: (LoadChatRoomMessages value) async {
          emit(state.copyWith(loadingMessages: true));

          await emit.forEach<List<MessageModel>>(
            _messageControl.getMessages(state.chatId),
            onData: (messages) {
              final _messages = messages.map((m) {
                return m.copyWith(
                  isMe: _control.isMe(m.sender),
                  chatId: state.chatId,
                );
              }).toList();

              final _order = _messages..sort((a, b) => a.time.compareTo(b.time));

              add(UpdateChatRoomMessages(messages: _order.reversed.toList()));

              emit(state.copyWith(loadingMessages: false));

              return state;
            },
          );
        },

        ///
        openChat: (OpenChat value) async {
          emit(
            state.copyWith(
              loadingMessages: false,
              chatId: value.chatId,
              message: state.message.copyWith(
                receiver: value.receiver,
                sender: value.sender,
                isSend: null,
              ),
              //  messages: state.messages,
              isEdit: false,
              isForward: false,
              isReply: false,
            ),
          );

          add(const LoadChatRoomMessages());
        },

        ///
        addMessage: (AddMessage value) {},

        ///
        updateChatRoomMessages: (UpdateChatRoomMessages value) async {
          emit(
            state.copyWith(messages: value.messages),
          );
        },

        ///
        editMessage: (EditMessage value) {
          emit(state.copyWith(isEdit: true, message: value.message));
        },

        ///
        forwardMessage: (ForwardMessage value) {},
        onSeen: (OnSeen value) async {},

        removeMessage: (RemoveMessage value) {},

        ///
        replyMessage: (ReplyMessage value) {},

        ///
        sendMessage: (SendMessage value) async {
          if (!state.isEdit && state.message.text.isNotEmpty) {
            emit(
              state.copyWith(
                message: state.message.copyWith(
                  time: DateTime.now(),
                ),
              ),
            );

            await _messageControl.addMessage(state.message, state.chatId);
            //  add(OnSend(isSend: isSend));

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
        onSend: (OnSend value) {},

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
        updateMessage: (UpdateMessage value) async {
          final int index = state.messages.indexWhere((e) => e.id == value.message.id);

          emit(state.copyWith(messages: state.messages..removeAt(index)));

          await _messageControl.updateMessage(value.message);
        },

        ///
        cancelForward: (CancelForward value) {
          emit(state.copyWith(isForward: false));
          add(const ClearMessage());
        },

        ///
        cancelEdit: (CancelEdit value) {
          emit(state.copyWith(isEdit: false));
          add(const ClearMessage());
        },

        ///
        cancelReply: (CancelReply value) {
          emit(state.copyWith(isReply: false));
          add(const ClearMessage());
        },

        ///
        updateChatState: (UpdateChatState value) async {
          final chat = value.chat.copyWith(
            time: Timestamp.fromDate(state.message.time),
            lastMessage: state.message.text,
          );
          await _control.updateChatState(chat);
        },
      );
    });
  }

  final _control = MessageControl();
  final _user = UserControl();
//  late LocalMessageControl _localMessageControl;
  late FirebaseMessageControl _remoteMessage;

  // @override
  // MessageState? fromJson(Map<String, dynamic> json) {
  //   return MessageState.fromJson(json);
  // }

  // @override
  // // TODO: implement id
  // String get id => state.chatId;

  // @override
  // Map<String, dynamic>? toJson(MessageState state) {
  //   return state.toJson();
  // }
}
