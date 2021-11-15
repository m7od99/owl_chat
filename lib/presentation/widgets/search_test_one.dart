import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchForChat extends StatelessWidget {
  const SearchForChat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _edit = TextEditingController();
    String? email;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        style: const TextStyle(fontSize: 16),
        controller: _edit,
        onEditingComplete: () async {
          if (email != null) {
            _edit.clear();
          }
        },
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.search,
        onChanged: (text) {
          email = text;
        },
        decoration: InputDecoration(
          hintText: 'Search',
          contentPadding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
