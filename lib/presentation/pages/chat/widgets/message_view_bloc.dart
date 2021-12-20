import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:owl_chat/data/models/chats/chat.dart';
import 'package:owl_chat/logic/bloc/message_bloc/message_bloc.dart';
import 'package:owl_chat/logic/event_handler/user_state.dart';
import 'package:owl_chat/presentation/pages/chat/widgets/message_bubble.dart';
import 'package:owl_chat/presentation/pages/chat/widgets/popup_card.dart';
import 'package:owl_chat/presentation/widgets/hero_root.dart';

class ChatRoomMessagesView extends StatefulWidget {
  const ChatRoomMessagesView({
    Key? key,
    required this.chat,
    required this.scrollController,
    required this.textEditingController,
  }) : super(key: key);

  final Chat chat;
  final ScrollController scrollController;
  final TextEditingController textEditingController;

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
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
          controller: widget.scrollController,
          itemCount: state.messages.length,
          itemBuilder: (BuildContext context, int index) {
            return MessageBubble(
              message: state.messages[index],
              onDoubleTap: () {
                Navigator.push(
                  context,
                  HeroDialogRoute(
                    builder: (context) => PopupCard(
                      message: state.messages[index],
                      tag: index,
                      textEditingController: widget.textEditingController,
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
