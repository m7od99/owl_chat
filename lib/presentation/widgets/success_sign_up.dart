import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:owl_chat/presentation/pages/chats/bottom_navigation_bar.dart';
import 'package:owl_chat/presentation/widgets/large_button.dart';

class SuccessPage extends StatelessWidget {
  static const String id = "SuccessPage";
  const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  color: Colors.orange,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
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
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 25),
                    child: Column(
                      children: [
                        Spacer(),
                        Text(
                          "Congratulations! your account has been successfully created",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.radley(
                              fontSize: 25, color: Colors.black),
                        ),
                        Spacer(),
                        LargeButton(
                            title: 'continue',
                            onTap: () {
                              Navigator.pushNamed(context, ChatsScreen.id);
                            }),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
