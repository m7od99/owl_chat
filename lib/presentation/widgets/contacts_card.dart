import 'package:flutter/material.dart';

class ContactsCard extends StatelessWidget {
  final String name;

  const ContactsCard({required this.name});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/user.png'),
            radius: 30,
          ),
          const SizedBox(width: 8),
          Text(
            name,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
