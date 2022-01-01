import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../../../data/models/chats/chat.dart';

import '../../../../logic/bloc/message_bloc/message_bloc.dart';
import '../../../widgets/hero_root.dart';
import 'message_bubble.dart';
import 'popup_card.dart';

class MessageAnimatedList<T> extends StatelessWidget {
  const MessageAnimatedList({
    Key? key,
    required this.chat,
    required this.itemScrollController,
    required this.textEditingController,
    required this.itemPositionsListener,
  }) : super(key: key);

  final Chat chat;
  final ItemScrollController itemScrollController;
  final TextEditingController textEditingController;
  final ItemPositionsListener itemPositionsListener;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessageBloc, MessageState>(
      buildWhen: (previous, current) {
        if (current.chatId == chat.id && current.messages.first.chatId == chat.id) {
          return true;
        }
        return false;
      },
      builder: (context, state) {
        if (state.loadingMessages) {
          return const Center(child: CircularProgressIndicator());
        }
        return ScrollablePositionedList.builder(
          reverse: true,
          itemScrollController: itemScrollController,
          itemPositionsListener: itemPositionsListener,
          itemCount: state.messages.length,
          itemBuilder: (context, index) {
            return MessageBubbleAnimated(
              index: index,
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
            );
          },
        );
      },
    );
  }
}
