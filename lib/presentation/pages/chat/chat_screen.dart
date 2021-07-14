import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  static String id = 'ChatScreen';

  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('sender'),
            Icon(Icons.account_circle, size: 30),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(),
      ),
      bottomSheet: BottomSheet(
        builder: (BuildContext context) => SendMessage(),
        onClosing: () {},
      ),
    );
  }
}

class SendMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (messages) {},
      decoration: InputDecoration(),
    );
  }
}
