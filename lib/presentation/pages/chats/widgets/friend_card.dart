import 'package:flutter/material.dart';
import 'package:owl_chat/presentation/widgets/profile_photo.dart';
import 'package:provider/provider.dart';

import '../../../../data/models/chats/chat.dart';
import '../../../../helper/helper.dart';
import '../../../../logic/event_handler/user_state.dart' as p;
import '../../../theme/constant.dart';

class FriendCard extends StatelessWidget {
  const FriendCard({
    required this.onTap,
    required this.chat,
  });

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

    return SizedBox(
      height: 55,
      child: InkWell(
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
                  child: Text(Helper.format(chat.time!)),
                ),
              ],
            ),
            //  CounterNewMessages(counter: 1),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CounterNewMessages extends StatelessWidget {
  int counter;
  CounterNewMessages({
    required this.counter,
    Key? key,
  }) : super(key: key);

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
