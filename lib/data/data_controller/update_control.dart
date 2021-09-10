import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:owl_chat/data/models/update.dart';

class UpdateControl {
  final _firestore = FirebaseFirestore.instance;

  updateStatus(Update update) async {
    await _firestore.collection('update').add(update.toMap());
  }

  getUpdateStatus() {
    return _firestore
        .collection('update')
        .doc('qgbGVG3A0S24q8s8r0wi')
        .get()
        .then((value) {
      if (value.exists) {
        final data = value.data();
        print(data);
        return Update.fromMap(data!);
      }
    });
  }
}
