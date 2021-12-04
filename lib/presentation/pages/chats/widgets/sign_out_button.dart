import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../logic/event_handler/user_state.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 100),
      child: Center(
        child: GestureDetector(
          onTap: () async {
            await Provider.of<UserState>(context, listen: false).logOut();

            // ignore: use_build_context_synchronously
            context.go('/login');
          },
          child: Material(
            borderRadius: BorderRadius.circular(20),
            color: Colors.indigo[600],
            elevation: 1,
            shadowColor: Colors.indigo[300],
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              child: Text(
                'Logout',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
