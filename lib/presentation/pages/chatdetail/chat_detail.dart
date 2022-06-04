import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:owl_chat/data/data_controller/message_control/message_control.dart';
import 'package:owl_chat/data/models/models.dart';
import 'package:owl_chat/logic/bloc/message_bloc/message_bloc.dart';
import 'package:owl_chat/logic/event_handler/user_state.dart';
import 'package:owl_chat/presentation/widgets/profile_photo.dart';

import '../../../logic/bloc/chat_room_bloc/chat_room_bloc.dart';

class ChatDetailPage extends StatelessWidget {
  ChatDetailPage({Key? key}) : super(key: key);

  static String id = 'chatDetailPage';

  @override
  Widget build(BuildContext context) {
    final chat = context.watch<MessageBloc>().chat;
    final total = context
        .read<MessageBloc>()
        .state
        .mapOrNull(loaded: (loaded) => loaded.messages.length);

    final gifs = context.read<MessageBloc>().state.mapOrNull(
        loaded: (loaded) =>
            loaded.messages.where((message) => message.isGif == true).toList().length);
    final user = UserState();

    return BlocBuilder<ChatRoomBloc, ChatRoomState>(builder: (
      context,
      bloc,
    ) {
      final state = ChatDetailState(bloc.chats.firstWhere(
        (element) => element.id == chat.id,
      ));
      return Scaffold(
        appBar: AppBar(
          title: Text(user.otherName(chat)),
          actions: [
            MuteNotifyIcon(state: state),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Hero(
                tag: 'photo',
                child: Center(
                  child: ChatProfilePhoto(
                    id: user.otherId(chat),
                    size: 70,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Total Messages:  ${total}',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Total Gifs:  ${gifs}',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}

class MuteNotifyIcon extends StatelessWidget {
  const MuteNotifyIcon({
    Key? key,
    required this.state,
  }) : super(key: key);

  final ChatDetailState state;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: ((context, child) => GestureDetector(
            onTap: () {
              state.toggleMute();
            },
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 400),
              switchInCurve: Curves.easeInOutBack,
              transitionBuilder: (child, animation) => FadeTransition(
                opacity: animation,
                child: child,
              ),
              child: state.mute
                  ? Icon(
                      Icons.notifications_off,
                      size: 35,
                      key: ValueKey('mute'),
                    )
                  : Icon(
                      Icons.notifications,
                      size: 35,
                      key: ValueKey('unMute'),
                    ),
            ),
          )),
      animation: state,
    );
  }
}

class ChatDetailState extends ChangeNotifier {
  Chat chat;

  late bool mute;

  ChatDetailState(this.chat) {
    mute = !chat.settings
        .firstWhere((element) => element.userId == UserState().userId)
        .allow;
  }

  void toggleMute() {
    final userId = UserState().userId;
    final _database = MessageControl();

    mute = !mute;

    int index = chat.settings.indexWhere((element) => element.userId == userId);

    final settings = chat.settings[index].copyWith(allow: !mute);

    log(settings.allow.toString());

    _database.updateChatState(
      chat.copyWith(settings: [
        settings,
        ...chat.settings..removeAt(index),
      ]),
    );

    print(mute);

    notifyListeners();
  }
}
