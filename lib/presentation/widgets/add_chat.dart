import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:owl_chat/data/data_controller/user_control.dart';
import 'package:owl_chat/presentation/pages/chat/chat_screen.dart';
import 'package:provider/provider.dart';

class AddChat extends StatelessWidget {
  static const String id = "AddFriend";

  const AddChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserControl>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('New Message'),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Column(
        children: [
          SearchForChat(),
          SizedBox(height: 50),
          ShowUsersStream(user: user),
        ],
      ),
    );
  }
}

class SearchForChat extends StatelessWidget {
  const SearchForChat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        style: TextStyle(fontSize: 16),
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          hintText: 'Search',
          contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}

class ShowUsersStream extends StatelessWidget {
  const ShowUsersStream({
    Key? key,
    required this.user,
  }) : super(key: key);

  final UserControl user;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: user.getUsers(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Container();
        }
        final data = snapshot.data!.docs;
        List<String> users = [];
        for (var user in data) {
          dynamic _user = user.data();
          users.add(_user['email']);
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

  final String user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        user,
        style: GoogleFonts.cherrySwash(fontSize: 18),
      ),
      // subtitle: Text('last seen'),
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/images/user.png'),
      ),
      trailing: Icon(Icons.chat_bubble_outlined),
      onTap: () {
        Navigator.pushNamed(context, ChatScreen.id);
      },
    );
  }
}
