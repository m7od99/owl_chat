import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:owl_chat/data/models/chats/message_model.dart';
import 'package:owl_chat/logic/bloc/message_bloc/message_bloc.dart';
import 'package:owl_chat/presentation/pages/chat/chat_screen.dart';
import 'package:owl_chat/presentation/pages/chat/widgets/message_bubble.dart';
import 'package:provider/provider.dart';

class PopupCard extends StatelessWidget {
  final MessageModel message;
  final int tag;
  final TextEditingController textEditingController;
  const PopupCard({
    Key? key,
    required this.message,
    required this.tag,
    required this.textEditingController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessageBloc, MessageState>(
      builder: (context, state) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 68),
            child: Hero(
              tag: tag,
              child: Material(
                borderRadius: BorderRadius.circular(25),
                color: Theme.of(context).scaffoldBackgroundColor,
                child: SizedBox(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Bubble(message: message),
                        ),
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
                        MenuCard(
                          icon: Icons.edit,
                          onTap: () {
                            Provider.of<MessageBloc>(context, listen: false)
                                .add(EditMessage(message: message));
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
    );
  }
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
