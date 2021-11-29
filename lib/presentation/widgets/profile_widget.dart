import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/logic/event_handler/user_state.dart';
import 'package:owl_chat/presentation/theme/constant.dart';
import "package:owl_chat/translations/locale_keys.g.dart";
import 'package:provider/provider.dart';

class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserState>(context);

    return Material(
      elevation: 2,
      color: Theme.of(context).splashColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextButton(
              onPressed: null,
              child: Text(''),
            ),
            const Spacer(),
            Column(
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/images/user.png'),
                ),
                const SizedBox(height: 8),
                Text(
                  user.userName,
                  style: kProfileCardText,
                ),
                Text(
                  user.email,
                  style: kProfileCardText,
                ),
              ],
            ),
            const Spacer(),
            TextButton(
              child: Text(
                LocaleKeys.edit.tr(),
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                // Navigator.pushNamed(context, ChangePhoto.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
