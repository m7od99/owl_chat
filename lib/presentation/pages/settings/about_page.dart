import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:owl_chat/data/models/app/about.dart';
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  'OwlChat Project',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Center(
                child: Text(
                  AboutData.about7.version,
                  style: const TextStyle(fontSize: 17),
                ),
              ),
              const SizedBox(height: 50),
              const Text(
                'Change logs:',
                style: TextStyle(fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    AboutData.about7.changeLog.length,
                    (index) => Padding(
                      padding: const EdgeInsets.all(7),
                      child: Text(
                        '-${AboutData.about7.changeLog[index]} .',
                        style: const TextStyle(fontSize: 17),
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Center(
                child: TextButton(
                  onPressed: () {
                    context.goNamed(UpdatePage.id);
                  },
                  child: const Text(
                    'Check For New Update',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              const Center(child: Text('Owl Chat made by ...')),
            ],
          ),
        ),
      ),
    );
  }
}
