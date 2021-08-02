import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/data/data_controller/user_control.dart';
import 'package:owl_chat/presentation/theme/constant.dart';
import "package:owl_chat/translations/locale_keys.g.dart";
import 'package:provider/provider.dart';

class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserControl>(context);

    return Container(
      child: Material(
        elevation: 2,
        color: Theme.of(context).splashColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/user.png'),
                  ),
                  SizedBox(height: 8),
                  if (user.userName != null)
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
              Spacer(),
              Text(
                LocaleKeys.edit.tr(),
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
