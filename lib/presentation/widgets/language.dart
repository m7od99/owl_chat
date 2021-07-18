import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Language extends StatelessWidget {
  const Language({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () async {
            await context.setLocale(Locale('en'));
          },
          child: Text('English'),
        ),
        ElevatedButton(
          onPressed: () async {
            await context.setLocale(Locale('ar'));
          },
          child: Text('العربية'),
        )
      ],
    );
  }
}
