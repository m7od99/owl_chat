import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:owl_chat/logic/bloc/chat_room_bloc/chat_room_bloc.dart';
import 'package:owl_chat/logic/bloc/message_bloc/message_bloc.dart';
import 'package:provider/provider.dart';

import '../../../../data/models/chats/chat.dart';
import '../../../../logic/event_handler/user_state.dart';
import 'friend_card.dart';

class ChatsStream extends StatelessWidget {
  const ChatsStream({
    Key? key,
  }) : super(key: key);

  String otherId(Chat chat) {
    if (UserState().userId == chat.other!.id) {
      return chat.me!.id;
    }
    return chat.other!.id;
  }

  @override
  Widget build(BuildContext context) {
    final UserState user = Provider.of<UserState>(context);

    return BlocBuilder<ChatRoomBloc, ChatRoomState>(
      builder: (context, state) {
        if (state.isLoading == true) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state.chats.isEmpty) {
          return const Center(
            child: Text(
              'You dont have any chat',
              style: TextStyle(fontSize: 18),
            ),
          );
        }
        final chats = state.chats;
        return BlocBuilder<MessageBloc, MessageState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                itemCount: chats.length,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                itemBuilder: (BuildContext context, int index) => FriendCard(
                  chat: chats[index],
                  onTap: () async {
                    context.read<MessageBloc>().add(
                          OpenChat(
                            chatId: chats[index].id,
                            receiver: user.otherId(chats[index]),
                            sender: user.userId,
                          ),
                        );

                    user.updateOnChat(chats[index].id);
                    context.go('/chat/${chats[index].id}', extra: chats[index]);
                  },
                ),
                separatorBuilder: (BuildContext context, int index) => const Divider(),
              ),
            );
          },
        );
      },
    );
  }
}
