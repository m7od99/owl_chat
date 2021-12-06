import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:owl_chat/presentation/pages/settings/update_page.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({
    Key? key,
  }) : super(key: key);

  static String id = 'about';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                const Text(
                  'OwlChat Project',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'version 0.0.1 alpha',
                  style: TextStyle(fontSize: 17),
                ),
                const SizedBox(height: 50),
                const Text('Owl Chat is App made by '),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    context.goNamed(UpdatePage.id);
                  },
                  child: const Text(
                    'Check For New Update',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
