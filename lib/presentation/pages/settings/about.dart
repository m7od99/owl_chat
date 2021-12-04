import 'package:flutter/material.dart';

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
              children: const [
                Text(
                  'OwlChat Project',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'version 0.0.1 alpha',
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(height: 50),
                Text('Owl Chat is App made by ')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
