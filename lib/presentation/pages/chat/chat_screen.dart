import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/data/models/chat.dart';
import 'package:owl_chat/domain/event_handler/messages_stream.dart';
import 'package:owl_chat/presentation/widgets/send_message_field.dart';

class ChatScreen extends StatelessWidget {
  static String id = 'ChatScreen';

  final Chat chat;

  const ChatScreen({Key? key, required this.chat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).splashColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(chat.name),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/user.png'),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                FocusScopeNode currentFocus = FocusScope.of(context);

                if (!currentFocus.hasPrimaryFocus) {
                  currentFocus.unfocus();
                }
              },
              child: ChatStream(
                chat: chat,
              ),
            ),
          ),
          SendMessageField(
            chat: chat,
          ),
        ],
      ),
    );
  }
}
