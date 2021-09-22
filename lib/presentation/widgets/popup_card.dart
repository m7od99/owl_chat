import 'package:flutter/material.dart';
import 'package:owl_chat/data/models/message.dart';

class PopopCard extends StatelessWidget {
  final Message message;
  const PopopCard({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: message.text.runes,
      createRectTween: (begin, end) => RectTween(begin: begin, end: end),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 68),
          child: Material(
            borderRadius: BorderRadius.circular(25),
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                MenuCard(
                  icon: Icons.restore,
                  onTap: () {},
                  title: 'reply',
                ),
                Divider(),
                MenuCard(
                  icon: Icons.copy,
                  onTap: () {},
                  title: 'copy',
                ),
                Divider(),
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
