import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

import '../../../data/models/chats/chat.dart';
import '../../../logic/event_handler/user_state.dart';
import 'widgets/messages_stream.dart';
import 'widgets/send_message_field.dart';

class ChatScreenArg extends StatefulWidget {
  final Chat chat;

  //final Chat chat;

  const ChatScreenArg({
    Key? key,
    required this.chat,
  }) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreenArg> with SingleTickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();
  late final AnimationController animationControl;

  Future _jumpToEnd() async {
    final end = _scrollController.position.minScrollExtent;
    await _scrollController.animateTo(
      end,
      duration: const Duration(milliseconds: 1000),
      curve: Curves.easeInOut,
    );
    animationControl.reset();
  }

  void _showArrow() {
    _scrollController.addListener(() {
      switch (_scrollController.position.userScrollDirection) {
        case ScrollDirection.forward:
          animationControl.forward();
          break;
        case ScrollDirection.reverse:
          animationControl.reverse();
          break;
        case ScrollDirection.idle:
          animationControl.reset();
          break;
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
    animationControl.dispose();
  }

  @override
  void initState() {
    super.initState();
    animationControl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 15),
    );
    _showArrow();
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserState>(context);
    // ignore: cast_nullable_to_non_nullable

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
                controller: _scrollController,
              ),
            ),
          ),
          SendMessageField(
            chat: widget.chat,
          ),
        ],
      ),
      floatingActionButton: FadeTransition(
        opacity: animationControl,
        child: ScaleTransition(
          scale: animationControl,
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
      ),
    );
  }
}
