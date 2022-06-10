import 'dart:developer';
import 'dart:io';
import 'dart:math' as math;
import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:owl_chat/logic/event_handler/user_state.dart';

class Storage {
  late final UserState _user;
  static final Storage _instance = Storage._internal();

  factory Storage() {
    return _instance;
  }

  Storage._internal() {
    _user = UserState();
  }

  Future<void> uploadImageByFilePath(String filePath) async {
    final FirebaseStorage storage = FirebaseStorage.instance;
    try {
      final data =
          await storage.ref('images/${filePath.split('/').last}').putFile(File(filePath));

      await _updateUserPhoto(data);
    } on FirebaseException catch (e) {
      log(e.toString());
    }
  }

  Future<void> uploadPhotoByBytes(Uint8List photo) async {
    final FirebaseStorage storage = FirebaseStorage.instance;
    try {
      final data = await storage
          .ref('images/${_user.userId} ${math.Random().nextInt(999999999)}')
          .putData(photo);

      await _updateUserPhoto(data);
    } on FirebaseException catch (e) {
      log(e.toString());
    }
  }

  Future _updateUserPhoto(TaskSnapshot data) async {
    if (data.state == TaskState.success) {
      final photoUri = await data.ref.getDownloadURL();
      await _user.updatePhoto(photoUri);

      log(data.state.toString());
    }
  }
}
