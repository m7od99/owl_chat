import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/presentation/pages/chats/chats_screen.dart';
import 'package:owl_chat/presentation/theme/constant.dart';

class FriendCard extends StatelessWidget {
  final Message message;
  final VoidCallback onTap;

  FriendCard({required this.onTap, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: InkWell(
        onTap: onTap,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            CircleAvatar(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              backgroundImage: AssetImage(''),
              radius: 28,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      message.sender,
                      // Faker().person.name(),
                      style: kFriendCardText,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Opacity(
                      opacity: 0.64,
                      child: Text(
                        message.text,
                        // Faker().food.toString(),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Opacity(
              opacity: 0.64,
              child: Text(message.time),
            ),
          ],
        ),
      ),
    );
  }
}
