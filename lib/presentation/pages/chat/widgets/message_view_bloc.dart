import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animations/loading_animations.dart';
import 'package:owl_chat/data/models/chats/chat.dart';
import 'package:owl_chat/logic/bloc/message_bloc/message_bloc.dart';
import 'package:owl_chat/presentation/pages/chat/widgets/message_bubble.dart';
import 'package:owl_chat/presentation/pages/chat/widgets/popup_card.dart';
import 'package:owl_chat/presentation/widgets/hero_root.dart';

class ChatRoomMessagesView extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return BlocBuilder<MessageBloc, MessageState>(
      builder: (context, state) {
        if (state.loadingMessages) {
          return Center(
            child: LoadingRotating.square(),
          );
        }
        return ListView.builder(
          reverse: true,
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
          controller: scrollController,
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
                      textEditingController: textEditingController,
                    ),
                  ),
                );
              },
              index: index,
            );
          },
        );
      },
    );
  }
}
