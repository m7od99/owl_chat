import 'package:flutter/material.dart';
import 'package:owl_chat/data/models/user.dart';
import 'package:owl_chat/logic/controller/search.dart';
import 'package:owl_chat/logic/event_handler/user_state.dart';
import 'package:owl_chat/presentation/widgets/search_card.dart';

import 'search_field.dart';

class SearchByName extends StatefulWidget {
  const SearchByName({Key? key}) : super(key: key);
  static const String id = "SearchByName";

  @override
  _SearchByNameState createState() => _SearchByNameState();
}

List<OwlUser> users = [];
OwlUser other = OwlUser(email: '', userName: '', id: '');

class _SearchByNameState extends State<SearchByName> {
  final _searchController = TextEditingController();
  final _userControl = UserState();
  bool found = false;

  @override
  void initState() {
    super.initState();
    getUsers();
  }

  Future getUsers() async {
    users = await _userControl.getUsers();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
        backgroundColor: Theme.of(context).splashColor,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: SearchField(
              controller: _searchController,
              suggestions: users.map((e) => e.userName).toList(),
              hint: 'Search',
              onSubmitted: (text) async {
                final user = await SearchLogic.getUserByUserName(_searchController.text);
                //  final tokens = await _user.getUserToken(user.id);
                _searchController.clear();

                if (user != null) {
                  // ignore: use_build_context_synchronously
                  Navigator.push(
                    context,
                    DialogRoute(
                      builder: (context) {
                        return ChatSearchCard(user: user);
                      },
                      context: context,
                    ),
                  );
                }
              },
              searchInputDecoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              ),
              suggestionsDecoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
              suggestionItemDecoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.75),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// showSearch(
// context: context,
// delegate: SearchPage<OwlUser>(
// items: users.getUsers(),
// filter: (user) => [
// user.userName,
// user.email,
// ],
// builder: (user) => ListTile(
// title: Text(user.userName),
// leading: Text(user.email),
// ),
// ));
