import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/data/data_controller/user_control.dart';
import 'package:provider/provider.dart';

class AddFriend extends StatelessWidget {
  static const String id = "AddFriend";

  const AddFriend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserControl>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('New Message'),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextField(
                style: TextStyle(fontSize: 16),
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.search,
                decoration: InputDecoration(
                  hintText: 'Search',
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            StreamBuilder<QuerySnapshot>(
              stream: null,
              builder: (context, snapshot) => ListView.builder(
                itemBuilder: (context, index) => ListTile(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
