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
  final _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    final control = Provider.of<MessageControl>(context);
    final user = Provider.of<UserControl>(context);
    List<Message> messages = [];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).splashColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('sender'),
            Icon(Icons.account_circle, size: 30),
          ],
        ),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: StreamBuilder<QuerySnapshot>(
          stream: control.getMessages('no one', user.userEmail),
          builder: (context, snapshot) => snapshot.hasData
              ? ListView.builder(itemBuilder: (context, index) {
                  dynamic data = snapshot.data!.docs.reversed;
                  for (var message in data) {
                    messages.add(Message.fromMap(message));
                  }

                  return MessageBubble(
                    message: messages[index],
                  );
                })
              : Container(),
        ),
      ),
      bottomSheet: SendMessageField(),
    );
  }
}
