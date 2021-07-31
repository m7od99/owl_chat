import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/data/models/chat.dart';
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

  Future<void> signUp(String email, String password) async {
    await _auth.createUserWithEmailAndPassword(
        email: email, password: password);

    final user = OwlUser(email: email, userName: '');
    user.id = _auth.currentUser!.uid;

    await _firestore.collection('users').doc(email).set(user.toMap());
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

  addFriend(Chats chats) async {
    final user = OwlUser(email: email, userName: '');
    user.id = _auth.currentUser!.uid;
    user.friends!.add(chats);

    await _firestore.collection('users').doc(email).update(user.toMap());
  }

  getContact() async {
    return await _firestore.collection('users').doc('contact').get();
  }

  get email => _auth.currentUser!.email;
  get isLogin => hasUser();
}
