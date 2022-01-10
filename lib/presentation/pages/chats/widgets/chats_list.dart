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
    context.watch<ChatRoomBloc>().stream.listen((data) {
      if (data.chats.length > data.chatRoomData.length) {
        context.read<ChatRoomBloc>().add(const LoadChatsData());
      }
    });
    super.didChangeDependencies();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final UserState user = Provider.of<UserState>(context);

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

        final _list = List<MessageBloc>.generate(
          chats.length,
          (index) {
            return MessageBloc();
          },
        );

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.separated(
            itemCount: chats.length,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            itemBuilder: (BuildContext context, int index) {
              return FriendCard(
                chat: chats[index],
                onTap: () async {
                  _list[index].add(
                    OpenChat(
                      chatId: chats[index].id,
                      receiver: user.otherId(chats[index]),
                      sender: user.userId,
                    ),
                  );

                  _list[index].add(UpdateChat(chat: chats[index]));

//todo throw error after close
                  context.go('/chat/${chats[index].id}', extra: state.chatRoomData[index]);
                },
              );
            },
            separatorBuilder: (BuildContext context, int index) => const Divider(),
          ),
        );
      },
    );
  }
}
