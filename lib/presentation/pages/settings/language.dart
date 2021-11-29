import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Language extends StatelessWidget {
  const Language({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).splashColor,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () async {
              await context.setLocale(const Locale('en'));
            },
            child: const Text('English'),
          ),
          ElevatedButton(
            onPressed: () async {
              await context.setLocale(const Locale('ar'));
            },
            child: const Text('العربية'),
          )
        ],
      ),
    );
  }
}
