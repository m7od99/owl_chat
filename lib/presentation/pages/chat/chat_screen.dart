import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/data/data_controller/user_control.dart';
import 'package:owl_chat/data/models/user.dart';
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

  String name(String myId) {
    if (widget.chat.me!.id == myId) return widget.chat.other!.userName;
    print(widget.chat.id);
    return widget.chat.me!.userName;
  }

  Future _jumpToEnd() async {
    var end = controller.position.minScrollExtent;
    await controller.animateTo(end,
        duration: Duration(seconds: 1), curve: Curves.ease);
  }

  Stream _showArrow() async* {
    if (controller.hasClients) {
      while (controller.offset != controller.position.minScrollExtent) {
        setState(() {
          _offstage = false;
        });
      }
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _showArrow();
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserControl>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).splashColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_sharp),
          onPressed: () {
            user.saveUser(OwlUser(
              id: user.userId,
              userName: user.userName,
              email: user.email,
              onChat: 'null',
            ));
            Navigator.pop(context);
          },
        ),
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
                _showArrow();
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
                  if (controller.offset ==
                      controller.position.minScrollExtent) {
                    _offstage = true;
                  }
                });
              },
              icon: Icon(
                Icons.arrow_downward,
                size: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
