import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:owl_chat/logic/bloc/message_bloc/message_bloc.dart';
import 'package:owl_chat/logic/bloc/update_bloc/update_bloc.dart';
import 'package:owl_chat/logic/event_handler/send_message_state.dart';
import 'package:owl_chat/presentation/theme/themes.dart';
import 'package:provider/provider.dart';

import '../data/data_controller/message_control.dart';
import '../logic/controller/validator.dart';
import '../logic/event_handler/settings.dart';
import '../logic/event_handler/user_state.dart';
import 'my_app.dart';

class ProviderControl extends StatelessWidget {
  const ProviderControl({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UpdateBloc>(
          create: (_) => UpdateBloc(),
        ),
        BlocProvider<MessageBloc>(
          create: (context) => MessageBloc(),
        )
      ],
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => MessageControl()),
          ChangeNotifierProvider(create: (context) => ThemeProvider()),
          ChangeNotifierProvider(create: (context) => UserState()),
          ChangeNotifierProvider(create: (context) => Validator()),
          ChangeNotifierProvider(create: (context) => SendMessageState()),
          ChangeNotifierProvider(create: (context) => AppSettings())
        ],
        child: MyApp(),
      ),
    );
  }
}
