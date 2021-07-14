import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/presentation/pages/chat/chat_screen.dart';
import 'package:owl_chat/presentation/theme/constant.dart';

class ChatsScreen extends StatelessWidget {
  static const String id = 'ChatsScreen';

  @override
  Widget build(BuildContext context) {
    final messages = MessagesData().messages;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Edit',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'Chats',
              style: TextStyle(color: Colors.white),
            ),
            Icon(
              Icons.create,
              color: Colors.white,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                size: 30,
              ),
              label: 'contacts'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.forum,
                size: 30,
              ),
              label: 'Chats'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                size: 30,
              ),
              label: 'setting'),
        ],
        currentIndex: 1,
      ),
      body: ListView.separated(
        itemCount: messages.length,
        padding: EdgeInsets.symmetric(horizontal: 5),
        itemBuilder: (BuildContext context, int index) => FriendCard(
          message: messages[index],
          onTap: () {
            Navigator.pushNamed(context, ChatScreen.id);
          },
        ),
        separatorBuilder: (BuildContext context, int index) => Divider(),
      ),
    );
  }
}

class MessagesData {
  var messages;
}

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
                      //message.sender,
                      '',
                      style: kfriendCardText,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Opacity(
                      opacity: 0.64,
                      child: Text(
                        //message.text,
                        '',
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
              child: Text(Faker().date.time()),
            ),
          ],
        ),
      ),
    );
  }
}

class Message {}
