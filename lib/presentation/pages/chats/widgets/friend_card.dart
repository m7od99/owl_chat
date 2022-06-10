import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:owl_chat/helper/helper.dart';
import 'package:owl_chat/logic/bloc/message_bloc/message_bloc.dart';
import 'package:owl_chat/presentation/widgets/profile_photo.dart';
import 'package:provider/provider.dart';

import '../../../../data/models/chats/chat.dart';
import '../../../../logic/event_handler/user_state.dart' as p;
import '../../../theme/constant.dart';

class FriendCard extends StatelessWidget {
  const FriendCard({
    Key? key,
    required this.chat,
    required this.onTap,
  }) : super(key: key);

  final Chat chat;
  final VoidCallback onTap;

  String name(String myId) {
    if (chat.me.id == myId) return chat.other.userName;
    return chat.me.userName;
  }

  String otherId(String myId) {
    if (chat.me.id == myId) return chat.other.id;
    return chat.me.id;
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<p.UserState>(context);

    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(5),
        child: Stack(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                ChatProfilePhoto(
                  size: 28,
                  id: otherId(user.userId),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          name(user.userId),
                          style: kFriendCardText,
                        ),
                        const SizedBox(height: 8),
                        Opacity(
                          opacity: 0.64,
                          child: Text(
                            chat.lastMessage,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.almarai(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.64,
                  child: Text(
                    Helper.readTimestamp(chat.time!),
                    style: GoogleFonts.almarai(
                      fontSize: 13,
                    ),
                  ),
                ),
              ],
            ),
            CounterNewMessages(counter: 0),
          ],
        ),
      ),
    );
  }
}

class CounterNewMessages extends StatelessWidget {
  const CounterNewMessages({
    required this.counter,
    Key? key,
  }) : super(key: key);

  final int counter;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessageBloc, MessageState>(builder: (context, state) {
      if (state is Loaded) if (state.newMessages > 0)
        return Positioned(
          bottom: 1,
          right: 1,
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Color(0xFFe53170),
              shape: BoxShape.circle,
            ),
            child: Text(
              '${state.newMessages}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      return Container();
    });
  }
}

class ChatCard extends StatelessWidget {
  const ChatCard({Key? key, required this.chat, required this.onTap}) : super(key: key);

  final Chat chat;
  final VoidCallback onTap;

  String name(String myId) {
    if (chat.me.id == myId) return chat.other.userName;
    return chat.me.userName;
  }

  String otherId(String myId) {
    if (chat.me.id == myId) return chat.other.id;
    return chat.me.id;
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<p.UserState>(context);

    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 18, vertical: 0),
      onTap: onTap,
      leading: ChatProfilePhoto(
        size: 28,
        id: otherId(user.userId),
      ),
      title: Text(name(user.userId)),
      subtitle: Opacity(
        opacity: 0.65,
        child: Text(
          chat.lastMessage,
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
      trailing: Column(
        children: [
          Opacity(
            opacity: 0.64,
            child: Text(
              Helper.readTimestamp(chat.time!),
              style: const TextStyle(
                fontSize: 13,
                fontFamily: 'assets/google_fonts/Tajawal-Black.ttf',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
