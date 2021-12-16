import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:owl_chat/data/data_controller/message_control.dart';
import 'package:owl_chat/data/models/chats/message_model.dart';
import 'package:owl_chat/data/models/chats/messages_type.dart';

part 'message_event.dart';
part 'message_state.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  MessageBloc()
      : _control = MessageControl(),
        super(const MessageState()) {
    on<WriteMessage>((event, emit) {
      return emit(
        state.copyWith(
          message: state.message.copyWith(
            text: event.text,
          ),
        ),
      );
    });

    on<OpenChatRoom>((event, emit) {
      return emit(
        state.copyWith(
          message: state.message.copyWith(
            sender: event.sender,
            receiver: event.receiver,
            chatId: event.chatRoomId,
          ),
        ),
      );
    });

    on<SendOnlineMessage>((event, emit) {
      emit(state.copyWith(message: state.message.copyWith(time: DateTime.now())));

      _control.sendMessageModel(state.message, state.message.chatId!);
    });
  }
  final MessageControl _control;
}
