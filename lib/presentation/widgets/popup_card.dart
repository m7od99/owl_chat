import 'package:flutter/material.dart';
import '../../data/models/message.dart';

class PopupCard extends StatelessWidget {
  final Message message;
  const PopupCard({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 68),
        child: Hero(
          tag: message.text.runes,
          child: Material(
            borderRadius: BorderRadius.circular(25),
            color: Theme.of(context).scaffoldBackgroundColor,
            child: SizedBox(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Material(
                        child: Text(message.text),
                      ),
                    ),
                    MenuCard(
                      icon: Icons.restore,
                      onTap: () {},
                      title: 'reply',
                    ),
                    const Divider(),
                    MenuCard(
                      icon: Icons.copy,
                      onTap: () {},
                      title: 'copy',
                    ),
                    const Divider(),
                    MenuCard(
                      icon: Icons.edit,
                      onTap: () {},
                      title: 'edit',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  const MenuCard({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ListTile(
        dense: true,
        title: Text(title),
        onTap: onTap,
        trailing: Icon(icon),
      ),
    );
  }
}
