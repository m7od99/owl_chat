import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:owl_chat/data/models/chats/chat.dart';
import 'package:owl_chat/logic/bloc/message_bloc/message_bloc.dart';
import 'package:owl_chat/logic/event_handler/user_state.dart';
import 'package:owl_chat/presentation/pages/chat/widgets/message_bub.dart';

class ChatRoomMessagesView extends StatefulWidget {
  const ChatRoomMessagesView({
    Key? key,
    required this.chat,
    required this.controller,
  }) : super(key: key);

  final Chat chat;
  final ScrollController controller;

  @override
  _ChatRoomMessagesViewState createState() => _ChatRoomMessagesViewState();
}

class _ChatRoomMessagesViewState extends State<ChatRoomMessagesView> {
  @override
  void initState() {
    UserState().updateOnChat(widget.chat.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessageBloc, MessageState>(
      builder: (context, state) {
        return ListView.builder(
          reverse: true,
          controller: widget.controller,
          itemCount: state.messages.length,
          itemBuilder: (BuildContext context, int index) {
            return MessageBub(
              message: state.messages[index],
            );
          },
        );
      },
    );
  }
}
