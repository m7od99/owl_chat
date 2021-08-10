import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/data/data_controller/user_control.dart';
import 'package:owl_chat/presentation/pages/login/login_screen.dart';
import 'package:owl_chat/presentation/widgets/profile_widget.dart';
import 'package:owl_chat/presentation/widgets/theme_sw.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  static const String id = "SettingsScreen";

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserControl>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).splashColor,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ProfileWidget(),
                SizedBox(height: 50),
                Card(
                  color: Theme.of(context).splashColor,
                  child: ListView.separated(
                    shrinkWrap: true,
                    padding: EdgeInsets.all(5),
                    itemBuilder: (BuildContext context, int index) => SettingsMenu(
                      title: settings[index],
                      onTap: () async {
                        if (index == 0) {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => HomeChats()),
                          // );
                        }
                        if (index == 1) {
                          Navigator.pushNamed(context, ThemePage.id);
                        }
                        if (index == 2) {
                          user.signOut();
                          Navigator.pushNamed(context, LoginScreen.id);
                        }
                      },
                    ),
                    itemCount: settings.length,
                    separatorBuilder: (BuildContext context, int index) => Divider(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<String> settings = ["Language", "Theme", "Sign out"];

class SettingsMenu extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const SettingsMenu({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 20),
            ),
            Icon(
              Icons.keyboard_arrow_right,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
