import 'package:flutter/material.dart';
import 'package:owl_chat/presentation/theme/constant.dart';

class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        elevation: 3,
        shadowColor: Colors.orangeAccent,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    backgroundImage: AssetImage('images/user.png'),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'User Name',
                    style: kProfileCardText,
                  ),
                  Text(
                    'Cal@Example.com',
                    style: kProfileCardText,
                  ),
                ],
              ),
              Spacer(),
              Text(
                'Edit',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
