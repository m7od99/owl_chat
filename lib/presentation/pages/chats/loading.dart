import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/logic/bloc/app_manger/app_manger_bloc.dart';
import 'package:owl_chat/logic/bloc/chat_room_bloc/chat_room_bloc.dart';
import 'package:owl_chat/logic/bloc/user_bloc/user_bloc.dart' as b;
import 'package:owl_chat/notifications/notification_controller.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';

import '../../../logic/event_handler/user_state.dart';
import 'chats_screen.dart';

class ChatsScreen extends StatefulWidget {
  static const String id = 'ChatsScreen';

  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

final user = UserState();

class _ChatsScreenState extends State<ChatsScreen> with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);

    user.updateIsOnline(true);

    NotificationController.getTokenThenSaveItToDataBase();

    context.read<AppMangerBloc>().add(const OnConnectivityChanged());
    context.read<b.UserBloc>().add(const b.GetChatsData());
    context.read<ChatRoomBloc>().add(const LoadChatRoom());
    context.read<ChatRoomBloc>().add(const LoadChatsData());

    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);

    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    if (state == AppLifecycleState.detached || state == AppLifecycleState.paused) {
      user.updateOnChat('null');
      user.updateLaseSeen(Timestamp.now());
      user.updateIsOnline(false);
    }

    if (state == AppLifecycleState.inactive || state == AppLifecycleState.resumed) {
      user.updateOnChat('chats');

      user.updateIsOnline(true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Chats();
  }
}
