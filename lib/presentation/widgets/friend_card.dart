import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/data/models/chat.dart';
import 'package:owl_chat/helper/helper.dart';
import 'package:owl_chat/logic/event_handler/user_state.dart';
import 'package:owl_chat/presentation/theme/constant.dart';
import 'package:provider/provider.dart';

class FriendCard extends StatelessWidget {
  final Chat chat;
  final VoidCallback onTap;

  FriendCard({required this.onTap, required this.chat});

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
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    //  SizedBox(
                    //  height: 4,
                    //  ),
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
      ),
    );
  }
}
