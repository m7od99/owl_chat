import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:owl_chat/logic/bloc/app_manger/app_manger_bloc.dart';
import 'package:owl_chat/logic/bloc/auth/auth_bloc.dart';
import 'package:owl_chat/logic/bloc/chat_room_bloc/chat_room_bloc.dart';
import 'package:owl_chat/logic/bloc/update_bloc/update_bloc.dart';
import 'package:owl_chat/logic/bloc/user_bloc/user_bloc.dart';
import 'package:owl_chat/navigation/router.dart';
import 'package:owl_chat/presentation/theme/themes.dart';
import 'package:provider/provider.dart';

import '../logic/event_handler/settings.dart';
import '../logic/event_handler/user_state.dart' as user;
import 'my_app.dart';

class ProviderControl extends StatelessWidget {
  const ProviderControl({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppMangerBloc>(
          create: (context) => AppMangerBloc(),
        ),
        BlocProvider<ChatRoomBloc>(
          create: (context) => ChatRoomBloc(),
        ),
        BlocProvider<UpdateBloc>(
          create: (_) => UpdateBloc(),
        ),
        // BlocProvider<MessageBloc>(
        //   create: (context) => MessageBloc(),
        // ),
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(),
        ),
        BlocProvider<UserBloc>(
          create: (context) => UserBloc(),
        ),
      ],
      child: MultiProvider(
        providers: [
          // ChangeNotifierProvider(create: (context) => MessageControl()),
          ChangeNotifierProvider(create: (context) => ThemeProvider()),
          ChangeNotifierProvider(create: (context) => user.UserState()),
          // ChangeNotifierProvider(create: (context) => Validator()),
          // ChangeNotifierProvider(create: (context) => SendMessageState()),
          ChangeNotifierProvider(create: (context) => AppSettings()),
          ChangeNotifierProvider(create: (context) => router),
        ],
        child: MyApp(),
      ),
    );
  }
}
