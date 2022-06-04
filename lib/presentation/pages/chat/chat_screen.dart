// ignore_for_file: cast_nullable_to_non_nullable

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:owl_chat/data/data_controller/message_control/message_control.dart';
import 'package:owl_chat/data/data_controller/user_control.dart';
import 'package:owl_chat/data/models/models.dart';
import 'package:owl_chat/logic/bloc/message_bloc/message_bloc.dart';
import 'package:owl_chat/logic/bloc/send_message_form/send_message_form_bloc.dart';
import 'package:owl_chat/presentation/pages/chat/widgets/edits_widget.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../../logic/event_handler/user_state.dart';
import '../../widgets/profile_photo.dart';
import 'widgets/message_view_bloc.dart';
import 'widgets/send_message_field.dart';

class ChatScreen extends StatefulWidget {
  static String id = 'ChatScreen';
  const ChatScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    final MessageBloc bloc = ModalRoute.of(context)!.settings.arguments as MessageBloc;

    return BlocProvider<SendMessageFormBloc>(
      create: (context) => SendMessageFormBloc(chat: bloc.chat),
      child: ChatPage(
        chat: bloc.chat,
        messageBloc: bloc,
        key: Key(bloc.chat.id),
      ),
    );
    //  user.updateOnChat(chat.id);
  }

  @override
  bool get wantKeepAlive => true;
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
    with
        SingleTickerProviderStateMixin,
        WidgetsBindingObserver,
        AutomaticKeepAliveClientMixin {
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

  void _chatSettings() async {
    final _database = MessageControl();
    final chat = await _database.getSpecificChat(widget.chat.id);
    final _userId = UserState().userId;

    if (chat!.settings.isEmpty) {
      _database.updateChatState(
        chat.copyWith(
          settings: [
            ChatNotificationsSettings(
              chatId: chat.id,
              userId: _userId,
            ),
          ],
        ),
      );
      return;
    }

    if (chat.settings.any((e) => (e.userId == _userId))) {
      return;
    }

    _database.updateChatState(
      chat.copyWith(
        settings: chat.settings
          ..add(
            ChatNotificationsSettings(
              chatId: chat.id,
              userId: _userId,
            ),
          ),
      ),
    );
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
  void initState() {
    super.initState();

    WidgetsBinding.instance.addObserver(this);

    animationControl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 15),
    );

    _showArrow();

    _chatSettings();

    _onSeen();

    UserState().updateOnChat(widget.chat.id);

    widget.messageBloc.add(const MessagesReceived());
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    if (state == AppLifecycleState.resumed || state == AppLifecycleState.inactive) {
      AwesomeNotifications().cancelNotificationsByChannelKey(widget.chat.id);

      Future.delayed(Duration.zero, () => UserState().updateOnChat(widget.chat.id));
    }
    if (state == AppLifecycleState.paused || state == AppLifecycleState.detached) {
      UserState().updateOnChat('null');
    }
  }

  @override
  void didUpdateWidget(covariant ChatPage oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    super.dispose();

    WidgetsBinding.instance.removeObserver(this);

    animationControl.dispose();
    //  _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final user = Provider.of<UserState>(context);

    return BlocBuilder<MessageBloc, MessageState>(
      builder: (context, state) {
        return BlocBuilder<SendMessageFormBloc, SendMessageFormState>(
          builder: (context, formState) {
            final chat = widget.chat;
            return Scaffold(
              appBar: AppBar(
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back_ios_sharp),
                  onPressed: () async {
                    user.updateOnChat('chats');
                    context.pop();
                  },
                ),
                title: ChatAppBar(user: user, chat: chat),
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
                        key: Key(chat.id),
                        chat: chat,
                        itemScrollController: itemScrollController,
                        textEditingController: _controller,
                        itemPositionsListener: itemPositionsListener,
                        messageBloc: widget.messageBloc,
                      ),
                    ),
                  ),
                  if (formState.isEdit == true)
                    EditMessageCard(
                      key: Key(chat.id),
                      controller: _controller,
                      messageBloc: widget.messageBloc,
                    ),
                  SendMessageField(
                    key: Key(chat.id),
                    chat: chat,
                    controller: _controller,
                    itemScrollController: itemScrollController,
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
                      elevation: 1,
                      shadowColor: Color.fromARGB(255, 42, 8, 8),
                      clipBehavior: Clip.hardEdge,
                      color: Color(0xFFe53170),
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
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class ChatAppBar extends StatelessWidget {
  const ChatAppBar({
    Key? key,
    required this.user,
    required this.chat,
  }) : super(key: key);

  final UserState user;
  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.go('/chat/${chat.id}/chatDetailPage', extra: context.read<MessageBloc>());
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(user.otherName(chat)),
              StreamBuilder<OwlUser>(
                stream: UserControl().getUserChanges(
                  user.otherId(chat),
                ),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const Text(
                      'last seen',
                      style: style,
                    );
                  }
                  if (snapshot.data!.onChat == chat.id) {
                    return const Text(
                      'online',
                      style: style,
                    );
                  }
                  // else if (snapshot.data!.lastSeen != null) {
                  //   return Text(
                  //     'last seen ${snapshot.data!.lastSeen!}',
                  //     style: style,
                  //   );
                  // }
                  else {
                    return const Text(
                      'last seen recently',
                      style: style,
                    );
                  }
                },
              ),
            ],
          ),
          Hero(
            tag: 'photo',
            child: ChatProfilePhoto(
              id: user.otherId(chat),
              size: 22,
            ),
          ),
        ],
      ),
    );
  }
}

const style = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.bold,
);
