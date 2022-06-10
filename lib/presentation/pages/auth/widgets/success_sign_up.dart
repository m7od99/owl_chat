import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:owl_chat/presentation/pages/chats/loading.dart';
import 'package:owl_chat/presentation/widgets/large_button.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class SuccessPage extends StatelessWidget {
  static const String id = "SuccessPage";
  const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _load = RoundedLoadingButtonController();

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                color: Colors.orange,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.check_circle_outline,
                      size: 100,
                      color: Colors.white,
                    ),
                    Text(
                      'Success',
                      style: GoogleFonts.adventPro(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
                child: Column(
                  children: [
                    const Spacer(),
                    Text(
                      "Congratulations! your account has been successfully created",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.radley(fontSize: 25, color: Colors.black),
                    ),
                    const Spacer(),
                    LargeButton(
                      title: 'continue',
                      onTap: () {
                        Navigator.pushNamed(context, ChatsScreen.id);
                      },
                      controller: _load,
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
