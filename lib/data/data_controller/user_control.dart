import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/data/models/user.dart';

class UserControl extends ChangeNotifier {
  final _auth = FirebaseAuth.instance;
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> login(String email, String password) async {
    await _auth.signInWithEmailAndPassword(email: email, password: password);
  }

  Future<void> logout() async {
    await _auth.signOut();
  }

  Future<void> signUp(String email, String password, String userName) async {
    await _auth.createUserWithEmailAndPassword(
        email: email, password: password);

    final user = OwlUser(email: email, userName: userName);
    user.id = _auth.currentUser!.uid;
    await _auth.currentUser!.updateDisplayName(userName);

    await _firestore.collection('users').doc(email).set(user.toMap());
  }

  Stream<QuerySnapshot> getUsers() {
    return _firestore.collection('users').snapshots();
  }

  bool _hasUser() {
    if (_auth.currentUser != null) {
      return true;
    }
    return false;
  }

  get email => _auth.currentUser!.email;
  get isLogin => _hasUser();
  get userName => _auth.currentUser!.displayName;
}
