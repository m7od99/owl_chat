import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserControl extends ChangeNotifier {
  final _auth = FirebaseAuth.instance;
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> login(String email, String password) async {
    await _auth.signInWithEmailAndPassword(email: email, password: password);
  }

  Future<void> logout() async {
    await _auth.signOut();
  }

  Future<void> signUp(String email, String password) async {
    await _auth.createUserWithEmailAndPassword(
        email: email, password: password);

    await _firestore.collection('users').doc(email).set({
      'email': email,
    });
  }

  getUsers() async {
    return await _firestore.collection('users').get().catchError((e) {
      print(e);
    });
  }

  bool hasUser() {
    if (_auth.currentUser != null) {
      return true;
    }
    return false;
  }

  get userEmail => _auth.currentUser!.email;
}
