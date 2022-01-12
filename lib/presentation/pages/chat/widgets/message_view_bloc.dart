import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../../../data/models/chats/chat.dart';

import '../../../../logic/bloc/message_bloc/message_bloc.dart';
import 'message_bubble.dart';

class MessageAnimatedList extends StatelessWidget {
  const MessageAnimatedList({
    Key? key,
    required this.chat,
    required this.itemScrollController,
    required this.textEditingController,
    required this.itemPositionsListener,
    required this.messageBloc,
  }) : super(key: key);

  final Chat chat;
  final ItemScrollController itemScrollController;
  final TextEditingController textEditingController;
  final ItemPositionsListener itemPositionsListener;
  final MessageBloc messageBloc;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessageBloc, MessageState>(
      builder: (context, state) {
        return state.map(
          initial: (value) {
            return const Center(child: CircularProgressIndicator());
          },
          loadProgress: (LoadProgress value) {
            return const Center(child: CircularProgressIndicator());
          },
          loaded: (Loaded value) {
            return ScrollablePositionedList.builder(
              reverse: true,
              itemScrollController: itemScrollController,
              itemPositionsListener: itemPositionsListener,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              itemCount: value.messages.length,
              itemBuilder: (context, index) {
                return MessageBubbleAnimated(
                  index: index,
                  message: value.messages[index],
                );
              },
            );
          },
        );
      },
    );
  }
}

    // onDoubleTap: () {
    //             Navigator.push(
    //               context,
    //               HeroDialogRoute(
    //                 builder: (context) => PopupCard(
    //                   message: state.messages[index],
    //                   tag: index,
    //                   textEditingController: textEditingController,
    //                   messageBloc: messageBloc,
    //                 ),
    //               ),
    //             );
    //           },
