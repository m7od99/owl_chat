// ignore_for_file: depend_on_referenced_packages

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:owl_chat/data/data_controller/message_control/message_control.dart';
import 'package:owl_chat/data/data_controller/user_control.dart';
import 'package:owl_chat/data/models/auth/user.dart';
import 'package:owl_chat/data/models/chats/chat.dart';
import 'package:owl_chat/data/models/chats/message_model.dart';
import 'package:owl_chat/data/models/chats/messages_type.dart';
import 'package:owl_chat/logic/controller/fcm_notifications.dart';

part 'message_bloc.freezed.dart';
part 'message_bloc.g.dart';
part 'message_event.dart';
part 'message_state.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  MessageBloc() : super(MessageState.init()) {
    on<MessageEvent>((event, emit) async {
      //    await _localMessageControl.clearData();
      await event.map(
        ///
        loadChatRoomMessages: (LoadChatRoomMessages value) async {
          emit(state.copyWith(loadingMessages: true));

          await emit.forEach<List<MessageModel>>(
            _control.getMessagesStream(state.chatId),
            onData: (messages) {
              final _messages = messages.map((m) {
                return m.copyWith(
                  isMe: _control.isMe(m.sender),
                );
              }).toList();

              final _order = _messages..sort((a, b) => a.time.compareTo(b.time));

              add(UpdateChatRoomMessages(messages: _order.reversed.toList()));

              print(_order.length);

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
                chatId: value.chatId,
                isSend: null,
              ),
              //  messages: state.messages,
              //    isEdit: false,
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

        ///
        onSeen: (OnSeen value) async {
          final message = state.messages[value.index];
          if (message.isSeen == null && message.isSeen != true && !message.isMe) {
            add(
              UpdateMessage(
                message: message.copyWith(isSeen: true),
              ),
            );
          }
        },

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
                  chatId: state.chatId,
                ),
              ),
            );

            final doc = await _control.sendMessageModel(state.message, state.chatId);
            //  add(OnSend(isSend: isSend));

            add(UpdateChatState(chat: value.chat));

            FCMNotifications.instance.send(
              messageId: doc.id.codeUnits.sum,
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
          _control.updateMessage(value.message);
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
          _control.updateChatState(chat);
        },

        ///
        closeChat: (CloseChat value) {
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
              chatId: '',
            ),
          );

          ///
        },
        updateChat: (UpdateChat value) {
          emit(state.copyWith(chat: value.chat));
        },

        ///
        sendGif: (SendGif value) async {
          emit(
            state.copyWith(
              message: state.message.copyWith(
                isGif: true,
                time: DateTime.now(),
                chatId: state.chatId,
                type: MessageType.gif,
              ),
            ),
          );

          await _control.sendMessageModel(state.message, state.chatId);
          _control.updateChatState(value.chat.copyWith(lastMessage: 'gif', time: Timestamp.now()));
          add(const ClearMessage());
        },
      );
    });
  }

  @override
  void onEvent(MessageEvent event) {
    // TODO: implement onEvent
    super.onEvent(event);
  }

  final _control = MessageControl();
  final _user = UserControl();
//  late LocalMessageControl _localMessageControl;
  // late FirebaseMessageControl _remoteMessage;

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
