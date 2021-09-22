import 'package:flutter/material.dart';
import 'package:owl_chat/presentation/theme/themes.dart';
import 'package:provider/provider.dart';

import 'data/data_controller/message_control.dart';
import 'logic/event_handler/user_state.dart';
import 'my_app.dart';

class ProviderControl extends StatelessWidget {
  const ProviderControl({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => MessageControl()),
      ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ChangeNotifierProvider(create: (context) => UserState()),
    ], child: MyApp());
  }
}
