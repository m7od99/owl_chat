import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:owl_chat/data/models/update.dart';

class UpdateControl {
  final _firestore = FirebaseFirestore.instance;

  Future updateStatus(Update update) async {
    await _firestore.collection('update').add(update.toMap());
  }

  /// get the app version stats with latest apk uri
  Future<Update?> getUpdateStatus() {
    return _firestore.collection('update').doc('qgbGVG3A0S24q8s8r0wi').get().then((value) {
      if (value.exists) {
        final data = value.data();
        log(data.toString());
        return Update.fromMap(data!);
      }
    });
  }
}
