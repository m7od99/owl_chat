import 'dart:core';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:owl_chat/data/models/auth/user.dart';
import 'package:owl_chat/logic/controller/search.dart';
import 'package:owl_chat/logic/event_handler/chats_logic.dart';
import 'package:owl_chat/logic/event_handler/user_state.dart';
import 'package:provider/provider.dart';

class UserSearchPage extends SearchDelegate<OwlUser> {
  @override
  ThemeData appBarTheme(BuildContext context) {
    return super.appBarTheme(context).copyWith(
          appBarTheme: AppBarTheme(
            backgroundColor: Theme.of(context).splashColor,
          ),
        );
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return FutureBuilder<OwlUser?>(
      future: SearchLogic.getUserByUserName(query),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: Text('cant found'),
          );
        }
        final foundUser = snapshot.data! as OwlUser;
        return ListTile(
          title: Text(
            foundUser.userName,
            style: const TextStyle(fontSize: 18),
          ),
          leading: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/user.png'),
          ),
          onTap: () async {
            final chat = await ChatsController().createChatRoom(foundUser);
            // ignore: use_build_context_synchronously
            context.go('/chat/${chat!.id}', extra: chat);
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final user = Provider.of<UserState>(context);
    return SafeArea(
      child: FutureBuilder<List<OwlUser>>(
        builder: (context, snap) {
          if (!snap.hasData) {
            return Container();
          }

          final _suggest = snap.data!.where(
            (e) => e.userName.toLowerCase().contains(query.toLowerCase()),
          );
          return ListView(
            children: _suggest
                .map(
                  (e) => ListTile(
                    title: Text(e.userName),
                    onTap: () {
                      query = e.userName;
                    },
                    contentPadding: const EdgeInsets.only(left: 70),
                  ),
                )
                .toList(),
          );
        },
        future: user.getUsers(),
      ),
    );
  }
}
