import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        name(user.userId),
                        style: kFriendCardText,
                      ),
                      Opacity(
                        opacity: 0.64,
                        child: Text(
                          chat.lastMessage,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
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
                  readTimestamp(chat.time!),
                  style: const TextStyle(
                    fontSize: 13,
                    fontFamily: 'assets/google_fonts/Tajawal-Black.ttf',
                  ),
                ),
              ),
            ],
          ),
          //  CounterNewMessages(counter: 1),
        ],
      ),
    );
  }
}

String readTimestamp(Timestamp timestamp) {
  final now = DateTime.now();
  final format = DateFormat('hh:mm a');
  final diffYearFormat = DateFormat('dd/MM/yyyy');
  final diffFormat = DateFormat('dd/MM');

  final DateTime date = timestamp.toDate();

  final diff = now.difference(date);
  var time = '';

  if (diff.inSeconds <= 0 ||
      diff.inSeconds > 0 && diff.inMinutes == 0 ||
      diff.inMinutes > 0 && diff.inHours == 0 ||
      diff.inHours > 0 && diff.inDays == 0) {
    time = format.format(date);
  } else {
    if (diff.inDays == 1) {
      time = '${diff.inDays} day ago';
    } else if (diff.inDays <= 6) {
      time = '${diff.inDays} days ago';
    } else {
      if (now.year - date.year >= 1) {
        time = diffYearFormat.format(date);
      } else {
        time = diffFormat.format(date);
      }
    }
  }

  return time;
}

class CounterNewMessages extends StatelessWidget {
  const CounterNewMessages({
    required this.counter,
    Key? key,
  }) : super(key: key);

  final int counter;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 1,
      right: 1,
      child: Container(
        padding: const EdgeInsets.all(7),
        decoration: BoxDecoration(
          color: Colors.indigo[400],
          shape: BoxShape.circle,
        ),
        child: Text(
          '$counter',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
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
              readTimestamp(chat.time!),
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
