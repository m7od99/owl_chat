import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:owl_chat/logic/bloc/chat_room_bloc/chat_room_bloc.dart';
import 'package:owl_chat/logic/bloc/message_bloc/message_bloc.dart';
import 'package:provider/provider.dart';

import '../../../../data/models/chats/chat.dart';
import '../../../../logic/event_handler/user_state.dart';
import 'friend_card.dart';

class ChatsList extends StatefulWidget {
  const ChatsList({
    Key? key,
  }) : super(key: key);

  @override
  State<ChatsList> createState() => _ChatsChatsListState();
}

class _ChatsChatsListState extends State<ChatsList> {
  String otherId(Chat chat) {
    if (UserState().userId == chat.other.id) {
      return chat.me.id;
    }
    return chat.other.id;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatRoomBloc, ChatRoomState>(
      builder: (context, state) {
        if (state.isLoading == true) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state.chats.isEmpty && state.isLoading == false) {
          return const Center(
            child: Text(
              'You dont have any chat',
              style: TextStyle(fontSize: 18),
            ),
          );
        }
        final chats = state.chats;

        return Padding(
          padding: const EdgeInsets.only(top: 4),
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return Column(
                      children: [
                        if (index != 0) Divider(height: 5),
                        Provider(
                          lazy: true,
                          key: Key(chats[index].id),
                          create: (context) => MessageBloc(chat: state.chats[index]),
                          builder: (context, widget) {
                            context.read<MessageBloc>().add(const MessagesReceived());
                            return FriendCard(
                              key: Key(chats[index].id),
                              chat: state.chats[index],
                              onTap: () async {
                                context.go(
                                  '/chat/${chats[index].id}',
                                  extra: context.read<MessageBloc>(),
                                );
                              },
                            );
                          },
                        ),
                      ],
                    );
                  },
                  childCount: chats.length,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
