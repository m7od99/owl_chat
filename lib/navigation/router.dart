import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:owl_chat/logic/event_handler/user_state.dart';

import 'routes.dart';

final router = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: Routes.home.path,
  urlPathStrategy: UrlPathStrategy.path,
  errorPageBuilder: (BuildContext context, GoRouterState state) {
    return MaterialPage(
      key: state.pageKey,
      child: Center(
        child: Text(state.error.toString()),
      ),
    );
  },
  routes: [
    Routes.home,
    Routes.login,
  ],
);
