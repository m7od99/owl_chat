import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

import '../search/search_page.dart';
import 'slider.dart';
import 'widgets/chats_stream.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  static String id = "/ChatsId";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).splashColor,
        automaticallyImplyLeading: false,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Chats'),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: UserSearchPage(),
                );
              },
            )
          ],
        ),
      ),
      body: const ChatsStream(),
      drawer: const SliderPage(),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(20),
        child: FloatingActionButton(
          backgroundColor: Colors.blueGrey[400],
          onPressed: () {},
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
