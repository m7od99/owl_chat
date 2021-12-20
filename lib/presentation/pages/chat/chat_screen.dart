// ignore_for_file: cast_nullable_to_non_nullable

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:owl_chat/logic/bloc/message_bloc/message_bloc.dart';
import 'package:provider/provider.dart';

import '../../../data/models/chats/chat.dart';
import '../../../data/models/chats/message_model.dart';
import '../../../logic/event_handler/user_state.dart';
import '../../widgets/profile_photo.dart';
import 'widgets/message_view_bloc.dart';
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
  final TextEditingController _controller = TextEditingController();

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
    final Chat chat = ModalRoute.of(context)!.settings.arguments as Chat;

    //  user.updateOnChat(chat.id);

    return BlocBuilder<MessageBloc, MessageState>(
      builder: (context, state) {
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
                  child: ChatRoomMessagesView(
                    chat: chat,
                    scrollController: _scrollController,
                    textEditingController: _controller,
                  ),
                ),
              ),
              if (state.isEdit == true) const EditMessageCard(),
              SendMessageField(
                chat: chat,
                controller: _controller,
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
      },
    );
  }
}

class EditMessageCard extends StatelessWidget {
  const EditMessageCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessageBloc, MessageState>(
      builder: (context, state) {
        return Material(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
            child: Row(
              children: [
                const Icon(Icons.edit),
                const SizedBox(width: 30),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Edit Message',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      state.message.text,
                      style: const TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    Provider.of<MessageBloc>(context, listen: false)
                        .add(const CancelEdit());
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
