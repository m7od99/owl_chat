import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:owl_chat/data/data_controller/user_control.dart';
import 'package:owl_chat/data/models/user.dart';
import 'package:owl_chat/domain/controller/search.dart';
import 'package:owl_chat/domain/event_handler/messages_state.dart';
import 'package:owl_chat/presentation/pages/chat/chat_screen.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  static const String id = 'Search';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // This is handled by the search bar itself.
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          BuildFloatingSearchBar(),
        ],
      ),
    );
  }
}

class BuildFloatingSearchBar extends StatefulWidget {
  @override
  _BuildFloatingSearchBarState createState() => _BuildFloatingSearchBarState();
}

OwlUser otherUser = OwlUser(email: '', userName: '', id: '');

bool found = false;

class _BuildFloatingSearchBarState extends State<BuildFloatingSearchBar> {
  final SearchLogic _search = SearchLogic();

  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return SafeArea(
      child: FloatingSearchBar(
        hint: 'Search...',
        scrollPadding: const EdgeInsets.only(top: 16, bottom: 30),
        transitionDuration: const Duration(milliseconds: 800),
        transitionCurve: Curves.easeInOut,
        physics: const BouncingScrollPhysics(),
        axisAlignment: isPortrait ? 0.0 : -1.0,
        isScrollControlled: true,
        openAxisAlignment: 0.0,
        onSubmitted: (text) async {
          final user = await _search.getUserByEmail(text);
          setState(
            () {
              otherUser.userName = user.userName;
              otherUser.id = user.id;
              otherUser.email = user.email;
              otherUser.isOnline = user.isOnline;

              print(otherUser.userName);

              if (otherUser.isOnline != null) {
                found = true;
              }
            },
          );
        },
        width: isPortrait ? 600 : 500,
        debounceDelay: const Duration(milliseconds: 500),
        onQueryChanged: (query) {},
        // Specify a custom transition to be used for
        // animating between opened and closed stated.
        transition: CircularFloatingSearchBarTransition(),
        // body: found ? ChatSearchCard(user: otherUser!) : Container(),
        actions: [
          FloatingSearchBarAction(
            showIfOpened: false,
            child: CircularButton(
              icon: const Icon(Icons.person),
              onPressed: () {},
            ),
          ),
          FloatingSearchBarAction.searchToClear(
            showIfClosed: false,
          ),
        ],
        builder: (context, transition) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (found == true) ChatSearchCard(user: otherUser),
                  // ShowUsersStream(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class ShowUsersStream extends StatelessWidget {
  final UserControl user = UserControl();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: user.getUsers(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Container();
        }
        final data = snapshot.data!.docs;
        List<OwlUser> users = [];
        for (var user in data) {
          dynamic _user = user.data();
          users.add(OwlUser(email: _user['email'], userName: '', id: ''));
        }
        return Expanded(
          child: ListView.builder(
            itemCount: users.length,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            itemBuilder: (context, index) => ChatSearchCard(user: users[index]),
          ),
        );
      },
    );
  }
}

class ChatSearchCard extends StatelessWidget {
  const ChatSearchCard({
    Key? key,
    required this.user,
  }) : super(key: key);

  final OwlUser user;

  @override
  Widget build(BuildContext context) {
    final MessagesState control = MessagesState();

    return ListTile(
      title: Text(
        user.userName,
        style: GoogleFonts.cherrySwash(fontSize: 18),
      ),
      // subtitle: Text('last seen'),
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/images/user.png'),
      ),
      trailing: Icon(Icons.chat_bubble_outlined),
      onTap: () async {
        final chat = await control.createChatRoom(otherUser);

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatScreen(
              chat: chat,
            ),
          ),
        );
      },
    );
  }
}
