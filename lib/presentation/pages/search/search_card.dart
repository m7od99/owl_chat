import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:owl_chat/data/models/auth/user.dart';
import 'package:owl_chat/logic/bloc/message_bloc/message_bloc.dart';
import 'package:owl_chat/logic/event_handler/chats_logic.dart';

class ChatSearchCard extends StatelessWidget {
  const ChatSearchCard({
    Key? key,
    required this.user,
  }) : super(key: key);

  final OwlUser user;

  @override
  Widget build(BuildContext context) {
    final ChatsController control = ChatsController();

    return Center(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 200),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: ListTile(
            title: Text(
              user.userName,
              style: GoogleFonts.cherrySwash(fontSize: 18),
            ),
            // subtitle: Text('last seen'),
            leading: const CircleAvatar(
              //todo add user photo
              backgroundImage: AssetImage('assets/images/user.png'),
            ),
            trailing: const Icon(Icons.chat_bubble_outlined),
            onTap: () async {
              log(user.id);

              final chat = await control.createChatRoom(user);
              log(chat!.id);

              final MessageBloc bloc = MessageBloc(chat: chat);

              // ignore: use_build_context_synchronously
              context.go('/chat/${chat.id}', extra: bloc);
            },
          ),
        ),
      ),
    );
  }
}
