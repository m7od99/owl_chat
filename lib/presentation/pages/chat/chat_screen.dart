import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/data/data_controller/message_control.dart';
import 'package:owl_chat/data/data_controller/user_control.dart';
import 'package:owl_chat/data/models/message.dart';
import 'package:owl_chat/presentation/widgets/message_bubble.dart';
import 'package:owl_chat/presentation/widgets/send_message_field.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatefulWidget {
  static String id = 'ChatScreen';

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    final control = Provider.of<MessageControl>(context);
    final user = Provider.of<UserControl>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).splashColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('sender'),
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
              child: ChatStream(control: control, user: user),
            ),
          ),
          SendMessageField(),
        ],
      ),
    );
  }
}

class ChatStream extends StatelessWidget {
  const ChatStream({
    Key? key,
    required this.control,
    required this.user,
  }) : super(key: key);

  final MessageControl control;
  final UserControl user;

  @override
  Widget build(BuildContext context) {
    final stream = control.getMessages('1');

    return SafeArea(
      child: StreamBuilder<QuerySnapshot>(
          stream: stream,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Container();
            }
            final data = snapshot.data!.docs.reversed;
            List<MessageBubble> messages = [];

            for (var mess in data) {
              dynamic message = mess.data();
              messages.add(
                MessageBubble(
                  key: GlobalKey(),
                  message: Message.fromMap(message),
                ),
              );
            }
            return ListView(
              children: messages,
              padding: EdgeInsets.all(2),
              reverse: true,
            );
          }),
    );
  }
}
