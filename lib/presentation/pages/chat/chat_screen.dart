import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/logic/event_handler/user_state.dart';
import 'package:provider/provider.dart';

import '../../../data/models/chat.dart';
import '../../widgets/messages_stream.dart';
import '../../widgets/send_message_field.dart';

class ChatScreen extends StatefulWidget {
  static String id = 'ChatScreen';

  final Chat chat;

  ChatScreen({Key? key, required this.chat}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final controller = ScrollController();
  bool _offstage = true;

  Future _jumpToEnd() async {
    final end = controller.position.minScrollExtent;
    await controller.animateTo(end, duration: const Duration(milliseconds: 1000), curve: Curves.easeInOut);
  }

  void _showArrow() {
    controller.addListener(() {
      if (controller.hasClients) {
        if (controller.offset != controller.position.minScrollExtent) {
          setState(() {
            _offstage = false;
          });
        }
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  void initState() {
    super.initState();
    _showArrow();
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserState>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).splashColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_sharp),
          onPressed: () async {
            user.updateOnChat('null');
            Navigator.pop(context);
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(user.otherName(widget.chat)),
            const CircleAvatar(
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
                final FocusScopeNode currentFocus = FocusScope.of(context);

                if (!currentFocus.hasPrimaryFocus) {
                  currentFocus.unfocus();
                }
              },
              child: ChatStream(
                chat: widget.chat,
                controller: controller,
              ),
            ),
          ),
          SendMessageField(
            chat: widget.chat,
          ),
        ],
      ),
      floatingActionButton: Offstage(
        offstage: _offstage,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 60),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.blue,
            ),
            child: IconButton(
              onPressed: () async {
                await _jumpToEnd();
                setState(() {
                  if (controller.offset == controller.position.minScrollExtent) {
                    _offstage = true;
                  }
                });
              },
              icon: const Icon(
                Icons.arrow_downward,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
