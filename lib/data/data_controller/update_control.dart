import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:owl_chat/data/models/app/about.dart';
import 'package:owl_chat/data/models/app/update.dart';

class UpdateControl {
  final _firestore = FirebaseFirestore.instance;

  Future updateStatus(Update update) async {
    await _firestore.collection('update').add(update.toMap());
  }

  /// get the app version stats with latest apk uri
  Future<Update?> getUpdateStatus() {
    return _firestore
        .collection('update')
        .doc('qgbGVG3A0S24q8s8r0wi')
        .get()
        .then((value) {
      if (value.exists) {
        final data = value.data();
        log(data.toString());
        return Update.fromMap(data!);
      }
    });
  }

  Stream<Update?> getUpdateData() async* {
    yield* _firestore
        .collection('update')
        .doc('qgbGVG3A0S24q8s8r0wi')
        .snapshots()
        .map<Update>((e) => Update.fromMap(e.data()!));
  }

  Future saveUpdateInfoToDataBase(About about) async {
    await _firestore
        .collection('update/qgbGVG3A0S24q8s8r0wi/${about.version}')
        .add(about.toJson());
  }

  Stream<About?> getUpdateInfoFromDataBase() async* {
    yield* _firestore
        .collection('update')
        .doc('qgbGVG3A0S24q8s8r0wi')
        .collection('0.0.2')
        .doc('DBWA3cd7c9t1MkqvmWMY')
        .snapshots()
        .map((e) {
      if (e.exists) {
        return About.fromJson(e.data()!);
      }
    });
  }
}
