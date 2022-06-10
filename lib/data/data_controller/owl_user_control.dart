import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:owl_chat/data/models/auth/owl_user.dart';

class OwlUserControl {
  final _firestore = FirebaseFirestore.instance;
  final _user = FirebaseAuth.instance;

  Future saveUser(Owl user) async {
    await _firestore.collection('owlUsers').doc(user.id).set(user.toJson());
  }

  Future updateUser(Owl user) async {
    await _firestore.collection('users').doc(user.id).update(user.toJson());
  }

  Future<Owl?> getUserInfo(String userId) async {
    final user = await _firestore.collection('users').where('id', isEqualTo: userId).get();

    if (user.docs.isNotEmpty) {
      return user.docs.map((e) => Owl.fromJson(e.data())).first;
    }
    return null;
  }

  String get id => _user.currentUser!.uid;

  bool get isLogin {
    if (_user.currentUser == null) {
      return false;
    }
    return true;
  }
}
