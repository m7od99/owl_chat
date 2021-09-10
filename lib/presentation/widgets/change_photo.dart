import 'package:flutter/material.dart';

class ChangePhoto extends StatefulWidget {
  ChangePhoto({Key? key}) : super(key: key);
  static const String id = "ChangePhoto";

  @override
  _ChangePhotoState createState() => _ChangePhotoState();
}

//todo
//final ImagePicker _picker = ImagePicker();

class _ChangePhotoState extends State<ChangePhoto> {
  @override
  Widget build(BuildContext context) {
    //  final user = Provider.of<UserControl>(context);

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              CircleAvatar(),
            ],
          ),
        ),
      ),
    );
  }
}
