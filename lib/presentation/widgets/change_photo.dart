import 'dart:io';
import 'dart:typed_data';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import '../../logic/event_handler/user_state.dart';

class ChangePhoto extends StatefulWidget {
  const ChangePhoto({Key? key}) : super(key: key);
  static const String id = "ChangePhoto";

  @override
  _ChangePhotoState createState() => _ChangePhotoState();
}

//todo
//final ImagePicker _picker = ImagePicker();

class _ChangePhotoState extends State<ChangePhoto> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserState>(context);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            if (user.photoUri != null)
              CachedNetworkImage(
                imageUrl: user.photoUri!,
                width: MediaQuery.of(context).size.width,
                height: 300,
                fit: BoxFit.fitWidth,
              ),
            if (user.photoUri == null)
              Image.asset(
                'assets/images/user.png',
                height: 300,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fitWidth,
              ),
            const SizedBox(height: 30),
            const SetNewPhotoButton(),
          ],
        ),
      ),
    );
  }
}

class SetNewPhotoButton extends StatelessWidget {
  const SetNewPhotoButton({
    Key? key,
  }) : super(key: key);

  Future _handelSetNewPhotoTap() async {
    Get.bottomSheet(
      const BottomCard(
        child: SetNewPhotoMenu(),
      ),
      useRootNavigator: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Colors.white,
          ),
        ),
        child: ListTile(
          minVerticalPadding: 2,
          horizontalTitleGap: 10,
          tileColor: Colors.black45,
          onTap: () async {
            _handelSetNewPhotoTap();
          },
          title: const Text(
            'set new photo',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          leading: const Icon(Icons.add_a_photo_outlined),
        ),
      ),
    );
  }
}

class SetNewPhotoMenu extends StatefulWidget {
  const SetNewPhotoMenu({
    Key? key,
  }) : super(key: key);

  @override
  State<SetNewPhotoMenu> createState() => _SetNewPhotoMenuState();
}

class _SetNewPhotoMenuState extends State<SetNewPhotoMenu> {
  final _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Center(
            child: Text('Open Gallery'),
          ),
          onTap: () async {
            final _photo = await _picker.pickImage(source: ImageSource.gallery);
            if (_photo != null) {
              Get.to(
                ConfirmPhoto(photo: _photo),
              );
            }
          },
        ),
        const Divider(),
        ListTile(
          title: const Center(
            child: Text('Take Photo'),
          ),
          onTap: () {},
        ),
      ],
    );
  }
}

class ConfirmPhoto extends StatelessWidget {
  const ConfirmPhoto({
    Key? key,
    required XFile? photo,
  })  : _photo = photo,
        super(key: key);

  final XFile? _photo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Image.file(
            File(_photo!.path),
            height: 300,
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
          const SizedBox(height: 40),
          TextButton(
            child: const Text('Set'),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}

class BottomCard extends StatelessWidget {
  const BottomCard({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.blueGrey[900],
        borderRadius: const BorderRadius.all(Radius.circular(16.0)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //_buildHandle(),
          child,
        ],
      ),
    );
  }

  // ignore: unused_element
  FractionallySizedBox _buildHandle() {
    return FractionallySizedBox(
      widthFactor: 0.25,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 12.0),
        child: Container(
          height: 5.0,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(2.5)),
          ),
        ),
      ),
    );
  }
}
