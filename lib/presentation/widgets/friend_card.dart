import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../data/models/chat.dart';
import '../../helper/helper.dart';
import '../../logic/event_handler/user_state.dart';
import '../theme/constant.dart';

class FriendCard extends StatelessWidget {
  final Chat chat;
  final VoidCallback onTap;

  const FriendCard({required this.onTap, required this.chat});

  String name(String myId) {
    if (chat.me!.id == myId) return chat.other!.userName;
    return chat.me!.userName;
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserState>(context);

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
                CircleAvatar(
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  backgroundImage: const AssetImage('assets/images/user.png'),
                  radius: 28,
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
                  child: Text(Helper.format(chat.time)),
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
