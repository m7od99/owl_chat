import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/logic/bloc/app_manger/app_manger_bloc.dart';
import 'package:owl_chat/logic/bloc/chat_room_bloc/chat_room_bloc.dart';
import 'package:owl_chat/logic/bloc/user_bloc/user_bloc.dart' as b;
// ignore: implementation_imports
import 'package:provider/src/provider.dart';

import '../../../logic/controller/notifications.dart';
import '../../../logic/event_handler/user_state.dart';
import 'chats_screen.dart';

class ChatsScreen extends StatefulWidget {
  static const String id = 'ChatsScreen';

  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

Notifications notifications = Notifications();
final user = UserState();

class _ChatsScreenState extends State<ChatsScreen> with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance!.addObserver(this);
    notifications.getTokenThenSaveItToDataBase();
    user.updateOwlUser();
    notifications.foregroundMessagingHandler();
    context.read<AppMangerBloc>().add(const OnConnectivityChanged());
    context.read<b.UserBloc>().add(const b.GetChatsData());
    context.read<ChatRoomBloc>().add(const LoadChatRoom());

    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);

    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    if (state == AppLifecycleState.detached || state == AppLifecycleState.paused) {
      user.updateOnChat('null');
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Chats();
  }
}
