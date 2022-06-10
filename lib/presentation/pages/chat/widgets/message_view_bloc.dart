import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../../../data/models/chats/chat.dart';

import '../../../../logic/bloc/message_bloc/message_bloc.dart';
import 'message_bubble.dart';

class MessageAnimatedList extends StatefulWidget {
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
  State<MessageAnimatedList> createState() => _MessageAnimatedListState();
}

class _MessageAnimatedListState extends State<MessageAnimatedList>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
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
              key: Key(widget.chat.id),
              reverse: true,
              itemScrollController: widget.itemScrollController,
              itemPositionsListener: widget.itemPositionsListener,
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

  @override
  void updateKeepAlive() {
    super.updateKeepAlive();
  }

  @override
  bool get wantKeepAlive => true;
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
