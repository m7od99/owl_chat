import 'dart:developer';
import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:owl_chat/logic/event_handler/user_state.dart';

class Storage {
  final user = UserState();

  Future<void> uploadImage(String filePath) async {
    final FirebaseStorage storage = FirebaseStorage.instance;
    try {
      final data =
          await storage.ref('images/${filePath.split('/').last}').putFile(File(filePath));

      if (data.state == TaskState.success) {
        final photoUri = await data.ref.getDownloadURL();
        await user.updatePhoto(photoUri);

        log(data.state.toString());
      }
    } on FirebaseException catch (e) {
      log(e.toString());
    }
  }
}
