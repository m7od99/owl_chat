import 'package:flutter/material.dart';

class ContactsCard extends StatelessWidget {
  final String name;

  const ContactsCard({required this.name});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/user.png'),
              radius: 30,
            ),
            SizedBox(width: 8),
            Text(
              name,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
