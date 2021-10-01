//todo forgot password page
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/translations/locale_keys.g.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(1, 0),
      child: TextButton(
        child: Text(
          LocaleKeys.forgot_password.tr(),
          style: const TextStyle(
            color: Colors.orange,
            decoration: TextDecoration.underline,
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
