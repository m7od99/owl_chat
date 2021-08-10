import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/presentation/widgets/contacts_card.dart';

class ContactsScreen extends StatelessWidget {
  static const String id = "ContactsScreen";

  @override
  Widget build(BuildContext context) {
    final users = Users();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).splashColor,
        automaticallyImplyLeading: false,
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index) => ContactsCard(
                name: users.names[index],
              ),
          separatorBuilder: (BuildContext context, int index) => Divider(),
          itemCount: users.names.length),
    );
  }
}

class Users {
  List<String> names = [];
  final faker = Faker();

  Users() {
    getUsers();
  }

  void getUsers() {
    for (int i = 0; i < 10; i++) {
      final name = faker.person.name();
      names.add(name);
    }
  }
}
