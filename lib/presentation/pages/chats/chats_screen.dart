import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/presentation/pages/chats/slider.dart';
import 'package:provider/provider.dart';

import '../../../data/data_controller/message_control.dart';
import '../../../logic/event_handler/chats_logic.dart';
import '../../../logic/event_handler/user_state.dart';
import '../../widgets/chats_stream.dart';
import '../../widgets/searching_by_name.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    final control = Provider.of<MessageControl>(context);
    final user = Provider.of<UserState>(context);
    final _chats = ChatsController();
    final stream = control.getChats(user.userId);

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
                Navigator.pushNamed(context, SearchByName.id);
              },
            )
          ],
        ),
      ),
      body: ChatsStream(user: user),
      drawer: const SliderPage(),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(20),
        child: FloatingActionButton(
          backgroundColor: Colors.blueGrey[400],
          onPressed: () {
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context) => const Search(),
            //   ),
            // );
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
