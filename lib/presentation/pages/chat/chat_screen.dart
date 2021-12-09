import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../data/models/chats/chat.dart';
import '../../../logic/event_handler/user_state.dart';
import '../../widgets/profile_photo.dart';
import 'widgets/messages_bloc_widget.dart';
import 'widgets/send_message_field.dart';

class ChatScreen extends StatefulWidget {
  static String id = 'ChatScreen';

  //final Chat chat;

  const ChatScreen({
    Key? key,
  }) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> with SingleTickerProviderStateMixin {
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
    final Chat chat = ModalRoute.of(context)!.settings.arguments as Chat;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).splashColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_sharp),
          onPressed: () async {
            user.updateOnChat('null');
            context.pop();
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(user.otherName(chat)),
            ChatProfilePhoto(
              id: user.otherId(chat),
              size: 22,
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
              child: MessagesView(
                chat: chat,
                controller: _scrollController,
              ),
            ),
          ),
          SendMessageField(
            chat: chat,
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
