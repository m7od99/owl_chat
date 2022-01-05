import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:owl_chat/data/models/chats/message_model.dart';
import 'package:owl_chat/logic/bloc/message_bloc/message_bloc.dart';

import 'package:owl_chat/presentation/pages/chat/widgets/message_bubble.dart';

class PopupCard extends StatelessWidget {
  const PopupCard({
    Key? key,
    required this.message,
    required this.tag,
    required this.textEditingController,
    required this.messageBloc,
  }) : super(key: key);

  final MessageBloc messageBloc;
  final MessageModel message;
  final int tag;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return Hero(
      transitionOnUserGestures: true,
      tag: tag,
      child: BlocBuilder<MessageBloc, MessageState>(
        builder: (context, state) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 68),
              child: Material(
                borderRadius: BorderRadius.circular(25),
                color: Theme.of(context).scaffoldBackgroundColor,
                child: SizedBox(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (message.isGif != null && message.isGif == true)
                            NewGifWidget(message: message)
                          else
                            BubbleAnimated(message: message),
                          MenuCard(
                            icon: Icons.restore,
                            onTap: () {
                              context.pop();
                            },
                            title: 'reply',
                          ),
                          const Divider(),
                          MenuCard(
                            icon: Icons.copy,
                            onTap: () {
                              context.pop();
                            },
                            title: 'copy',
                          ),
                          const Divider(),
                          if (message.isMe && !isGif(message))
                            MenuCard(
                              icon: Icons.edit,
                              onTap: () {
                                messageBloc.add(EditMessage(message: message));
                                textEditingController.text = message.text;

                                context.pop();
                              },
                              title: 'edit',
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

bool isGif(MessageModel message) {
  if (message.isGif != null && message.isGif == true) {
    return true;
  }
  return false;
}

class MenuCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  const MenuCard({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ListTile(
        dense: true,
        title: Text(title),
        onTap: onTap,
        trailing: Icon(icon),
      ),
    );
  }
}
