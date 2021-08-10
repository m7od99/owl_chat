import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/logic/controller/notifications.dart';
import 'package:owl_chat/presentation/pages/chats/chats_acreen.dart';
import 'package:owl_chat/presentation/pages/contacts/contacts_screen.dart';
import 'package:owl_chat/presentation/pages/settings/settings_screen.dart';
import 'package:owl_chat/presentation/widgets/search_for users.dart';
import "package:owl_chat/translations/locale_keys.g.dart";

class ChatsScreen extends StatefulWidget {
  static const String id = 'ChatsScreen';

  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

int currentIndex = 1;

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  void initState() {
    token();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    void onTaped(index) {
      setState(() {
        currentIndex = index;
      });
    }

    List<Widget> title = [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(LocaleKeys.contacts.tr()),
          Icon(Icons.add),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(LocaleKeys.edit.tr()),
          Text(LocaleKeys.chats.tr()),
          IconButton(
            icon: Icon(Icons.create),
            onPressed: () {
              Navigator.pushNamed(context, Search.id);
            },
          ),
        ],
      ),
      Row(
        children: [
          Text(LocaleKeys.settings.tr()),
        ],
      ),
    ];

    List<Widget> _pages = [
      ContactsScreen(),
      Chats(),
      SettingsScreen(),
    ];

    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).splashColor,
      //   automaticallyImplyLeading: false,
      //   title: title.elementAt(currentIndex),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTaped,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
            ),
            label: LocaleKeys.contacts.tr(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.forum,
            ),
            label: LocaleKeys.chats.tr(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: LocaleKeys.settings.tr(),
          ),
        ],
        currentIndex: currentIndex,
      ),
      body: _pages.elementAt(currentIndex),
    );
  }
}

Future<void> saveTokenToDatabase(String token) async {
  // Assume user is logged in for this example
  String userId = FirebaseAuth.instance.currentUser!.uid;

  await FirebaseFirestore.instance.collection('users').doc(userId).update({
    'tokens': FieldValue.arrayUnion([token]),
  });
}

Future<String?> getToken() async {
  return await FirebaseMessaging.instance.getToken();
}

void token() async {
  var token = await getToken();
  print(token);
  await saveTokenToDatabase(token!);

  FirebaseMessaging.instance.onTokenRefresh.listen(saveTokenToDatabase);
}
