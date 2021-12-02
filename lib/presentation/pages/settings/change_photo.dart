import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cropperx/cropperx.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:owl_chat/app/my_app.dart';
import 'package:owl_chat/logic/controller/upload_image.dart';
import 'package:provider/provider.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

import '../../../logic/event_handler/user_state.dart';

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
      body: SafeArea(
        child: Stack(
          children: [
            Column(
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
            Positioned(
              top: 1,
              left: 1,
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  size: 35,
                  color: Colors.blue[200],
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
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

  @override
  Widget build(BuildContext context) {
    Future _handelSetNewPhotoTap() async {
      showModalBottomSheet(
        backgroundColor: const Color(0XFF0d0d18),
        builder: (BuildContext context) => const BottomCard(
          child: SetNewPhotoMenu(),
        ),
        context: context,
      );
    }

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

            //  final LostDataResponse response = await _picker.retrieveLostData();
            //  if (response.file != null) {}

            if (_photo != null) {
              navigatorKey.currentState!.push(
                MaterialPageRoute(
                  builder: (_) {
                    return ConfirmPhoto(
                      photo: _photo,
                    );
                  },
                ),
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
  ConfirmPhoto({
    Key? key,
    required XFile photo,
  })  : _photo = photo,
        super(key: key);

  final XFile _photo;
  final _cropperKey = GlobalKey(debugLabel: 'cropperKey');

  @override
  Widget build(BuildContext context) {
    final RoundedLoadingButtonController controller = RoundedLoadingButtonController();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Cropper(
                overlayType: OverlayType.circle,
                cropperKey: _cropperKey,
                image: Image.file(
                  File(_photo.path),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.clear_outlined,
                    size: 35,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(width: 45),
                RoundedLoadingButton(
                  width: 50,
                  onPressed: () async {
                    controller.start();
                    final imageBytes = await Cropper.crop(
                      cropperKey: _cropperKey,
                    );

                    final uploader = Storage();

                    if (imageBytes != null) {
                      await uploader.uploadPhotoByBytes(imageBytes);
                    }
                    controller.stop();
                    // ignore: use_build_context_synchronously
                    Navigator.pop(context);
                  },
                  controller: controller,
                  child: const Icon(
                    Icons.done,
                    size: 35,
                  ),
                ),
              ],
            )
          ],
        ),
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
