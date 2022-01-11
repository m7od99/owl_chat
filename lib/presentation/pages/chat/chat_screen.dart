// ignore_for_file: cast_nullable_to_non_nullable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:owl_chat/logic/bloc/message_bloc/message_bloc.dart';
import 'package:owl_chat/presentation/pages/chat/widgets/edits_widget.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../../data/models/chats/chat.dart';
import '../../../logic/event_handler/user_state.dart';
import '../../widgets/profile_photo.dart';
import 'widgets/message_view_bloc.dart';
import 'widgets/send_message_field.dart';

class ChatScreen extends StatelessWidget {
  static String id = 'ChatScreen';

  //final Chat chat;

  const ChatScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MessageBloc bloc = ModalRoute.of(context)!.settings.arguments as MessageBloc;

    return ChatPage(chat: bloc.state.chat, messageBloc: bloc);
    //  user.updateOnChat(chat.id);
  }
}

class ChatPage extends StatefulWidget {
  const ChatPage({
    Key? key,
    required this.chat,
    required this.messageBloc,
  }) : super(key: key);

  final Chat chat;
  final MessageBloc messageBloc;

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver {
  final ItemScrollController itemScrollController = ItemScrollController();

  final ItemPositionsListener itemPositionsListener = ItemPositionsListener.create();

  final TextEditingController _controller = TextEditingController();

  late final AnimationController animationControl;

  Future _jumpToEnd() async {
    await itemScrollController.scrollTo(
      index: 0,
      duration: const Duration(seconds: 2),
      curve: Curves.easeInOutCubic,
    );
  }

  Future _onSeen() async {
    itemPositionsListener.itemPositions.addListener(() {
      for (final index in itemPositionsListener.itemPositions.value) {
        widget.messageBloc.add(OnSeen(index: index.index));
      }
    });
  }

  void _showArrow() {
    itemPositionsListener.itemPositions.addListener(() {
      if (itemPositionsListener.itemPositions.value.first.index == 0) {
        animationControl.reset();
      }
      if (itemPositionsListener.itemPositions.value.first.index > 12) {
        animationControl.forward();
      } else {
        animationControl.reverse();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();

    WidgetsBinding.instance!.removeObserver(this);

    widget.messageBloc.close();

    animationControl.dispose();
    _controller.dispose();
  }

  @override
  void initState() {
    WidgetsBinding.instance!.addObserver(this);

    animationControl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 15),
    );

    _showArrow();

    _onSeen();

    UserState().updateOnChat(widget.chat.id);

    widget.messageBloc.add(
      OpenChat(
        chatId: widget.chat.id,
        receiver: UserState().otherId(widget.chat),
        sender: UserState().userId,
      ),
    );

    super.initState();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    if (state == AppLifecycleState.resumed) {
      Future.delayed(Duration.zero, () => UserState().updateOnChat(widget.chat.id));
    }
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserState>(context);

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
                Text(user.otherName(widget.chat)),
                ChatProfilePhoto(
                  id: user.otherId(widget.chat),
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
                  child: MessageAnimatedList(
                    chat: widget.chat,
                    itemScrollController: itemScrollController,
                    textEditingController: _controller,
                    itemPositionsListener: itemPositionsListener,
                    messageBloc: widget.messageBloc,
                  ),
                ),
              ),
              if (state.isEdit == true)
                EditMessageCard(
                  controller: _controller,
                  messageBloc: widget.messageBloc,
                ),
              SendMessageField(
                chat: widget.chat,
                controller: _controller,
                itemScrollController: itemScrollController,
                messageBloc: widget.messageBloc,
              ),
            ],
          ),
          floatingActionButton: FadeTransition(
            opacity: animationControl,
            child: ScaleTransition(
              scale: animationControl,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 60),
                child: Material(
                  clipBehavior: Clip.hardEdge,
                  color: const Color(0xFF233720),
                  shape: const CircleBorder(),
                  child: IconButton(
                    onPressed: _jumpToEnd,
                    icon: const Icon(
                      Icons.expand_more,
                      color: Colors.white,
                      size: 30,
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
