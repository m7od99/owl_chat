import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:owl_chat/data/models/user.dart';
import 'package:owl_chat/logic/controller/search.dart';
import 'package:owl_chat/presentation/widgets/search_card.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  static const String id = 'Search';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            //  SearchAppBar(),
            BuildFloatingSearchBar(),
          ],
        ),
      ),
    );
  }
}

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingSearchAppBar(
      transitionDuration: const Duration(milliseconds: 800),
      title: const Text('Search'),
      body: Container(),
    );
  }
}

class BuildFloatingSearchBar extends StatefulWidget {
  @override
  _BuildFloatingSearchBarState createState() => _BuildFloatingSearchBarState();
}

OwlUser otherUser = OwlUser(email: '', userName: '', id: '');

bool found = false;
bool load = false;

class _BuildFloatingSearchBarState extends State<BuildFloatingSearchBar> {
  @override
  Widget build(BuildContext context) {
    final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    return SafeArea(
      child: FloatingSearchBar(
        scrollPadding: const EdgeInsets.only(top: 16, bottom: 30),
        transitionDuration: const Duration(milliseconds: 800),
        transitionCurve: Curves.easeInOut,
        physics: const BouncingScrollPhysics(),
        axisAlignment: isPortrait ? 0.0 : -1.0,
        openAxisAlignment: 0.0,
        progress: load,
        onSubmitted: (text) async {
          setState(() {
            load = true;
          });
          final user = await SearchLogic.getUserByUserName(text);

          setState(
            () {
              load = false;
              otherUser.userName = user!.userName;
              otherUser.id = user.id;
              otherUser.email = user.email;
              otherUser.isOnline = user.isOnline;

              log(otherUser.userName);

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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (found == true) ChatSearchCard(user: otherUser),
                // ShowUsersStream(),
              ],
            ),
          );
        },
      ),
    );
  }
}

// class ShowUsersStream extends StatelessWidget {
//   final UserControl user = UserControl();
//
//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<QuerySnapshot>(
//       stream: user.getUsers(),
//       builder: (context, snapshot) {
//         if (!snapshot.hasData) {
//           return Container();
//         }
//         final data = snapshot.data!.docs;
//         List<OwlUser> users = [];
//         for (var user in data) {
//           dynamic _user = user.data();
//           users.add(OwlUser(email: _user['email'], userName: '', id: ''));
//         }
//         return Expanded(
//           child: ListView.builder(
//             itemCount: users.length,
//             padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
//             itemBuilder: (context, index) => ChatSearchCard(user: users[index]),
//           ),
//         );
//       },
//     );
//   }
// }
