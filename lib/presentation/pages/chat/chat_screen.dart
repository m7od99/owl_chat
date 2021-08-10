import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/data/data_controller/user_control.dart';
import 'package:provider/provider.dart';
import '../../../data/models/chat.dart';
import '../../../logic/event_handler/messages_stream.dart';
import '../../widgets/send_message_field.dart';

class ChatScreen extends StatelessWidget {
  static String id = 'ChatScreen';

  final Chat chat;

  const ChatScreen({Key? key, required this.chat}) : super(key: key);

  String name(String myId) {
    if (chat.me!.id == myId) return chat.other!.userName;
    return chat.me!.userName;
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserControl>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).splashColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(name(user.userId)),
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
