import 'package:flutter/material.dart';
import 'package:owl_chat/presentation/theme/themes.dart';
import 'package:provider/provider.dart';

class ThemePage extends StatefulWidget {
  static const String id = "ThemePage";

  @override
  _ThemePageState createState() => _ThemePageState();
}

enum ThemeMode { dark, light }

class _ThemePageState extends State<ThemePage> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).splashColor,
        title: const Text('Theme'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Dark mode',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Switch.adaptive(
              value: themeProvider.isDarkMode,
              onChanged: (value) {
                final provider =
                    Provider.of<ThemeProvider>(context, listen: false);
                provider.toggleTheme(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
