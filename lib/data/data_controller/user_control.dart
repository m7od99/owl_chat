import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/data/models/user.dart';

class UserControl extends ChangeNotifier {
  final _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> login(String email, String password) async {
    await _auth.signInWithEmailAndPassword(email: email, password: password);
  }

  Future<void> signOut() async {
    await _auth.signOut().catchError((e) {
      log(e.toString());
    });
  }

  Future<void> signUp(String email, String password, String userName) async {
    await _auth.createUserWithEmailAndPassword(email: email, password: password);

    await _auth.currentUser!.updateDisplayName(userName);
  }

  Future<QuerySnapshot<Map<String, dynamic>>> getUsers() {
    return _firestore.collection('users').get();
  }

  Future<QuerySnapshot<Map<String, dynamic>>> getUsersEmail() async {
    return _firestore.collection('users').where('email').get();
  }

  Future<String?> getToken() async {
    final FirebaseMessaging messaging = FirebaseMessaging.instance;
    return messaging.getToken();
  }

  Future<void> saveUser(OwlUser user) async {
    await _firestore.collection('users').doc(user.id).set(user.toMap()).catchError((e) {
      log(e.toString());
    });
  }

  Future addFriend(String userId, OwlUser otherUser) async {
    await _firestore.collection('users').doc(userId).collection('friends').add(otherUser.toMap());
  }

  Future<void> updateUser(OwlUser user) async {
    await _firestore.collection('users').doc(user.id).update(user.toMap()).catchError((e) {
      log(e.toString());
    }).then((value) => log('updated'));
  }

  Future getUserInfo(String userId) async {
    return _firestore.collection('users').where('id', isEqualTo: userId).get().catchError((e) {
      log(e.toString());
    });
  }

  Future getUserByEmail(String email) async {
    return _firestore.collection('users').where('email', isEqualTo: userId).get().catchError((e) {
      log(e.toString());
    });
  }

  /// check if user is login
  bool _hasUser() {
    if (_auth.currentUser != null) {
      return true;
    }
    return false;
  }

  ///
  Future<void> saveTokenToDatabase(String token) async {
    final String userId = FirebaseAuth.instance.currentUser!.uid;

    _firestore.collection('users').doc(userId).update({
      'tokens': FieldValue.arrayUnion([token]),
    });
  }

  Future<String?> getUserToken(String id) async {
    final documentSnapshot = await _firestore.collection('users').doc(id).get();

    if (documentSnapshot.exists) {
      //  log('Document exists on the database');
      final data = documentSnapshot.data();
      //  log(data!['tokens'].runtimeType.toString());
      final String? token = data!['tokens'];

      return token;
    }
  }

  Future updatePhoto(String uri) async {
    await _auth.currentUser!.updatePhotoURL(uri);
  }

  Future updateUserName(String newName) async {
    await _auth.currentUser!.updateDisplayName(newName);
  }

  // return info about user
  String get email => _auth.currentUser!.email!;
  bool get isLogin => _hasUser();
  String get userName => _auth.currentUser!.displayName!;
  String get userId => _auth.currentUser!.uid;
  String? get userUriPhoto => _auth.currentUser!.photoURL;
}
