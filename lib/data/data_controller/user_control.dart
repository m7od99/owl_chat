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

  Future<void> signOut() async {
    await _auth.signOut().catchError((e) {
      print(e.toString());
    });
  }

  Future<void> signUp(String email, String password, String userName) async {
    await _auth.createUserWithEmailAndPassword(
        email: email, password: password);

    await _auth.currentUser!.updateDisplayName(userName);
  }

  Future<QuerySnapshot<Map<String, dynamic>>> getUsers() {
    return _firestore.collection('users').get();
  }

  getUsersEmail() async {
    return await _firestore.collection('users').where('email').get();
  }

  Future<void> saveUser(OwlUser user) async {
    await _firestore
        .collection('users')
        .doc(user.id)
        .set(user.toMap())
        .catchError((e) {
      print(e.toString());
    });
  }

  addFriend(String userId, OwlUser otherUser) async {
    await _firestore
        .collection('users')
        .doc(userId)
        .collection('friends')
        .add(otherUser.toMap());
  }

  Future<void> updateUser(OwlUser user) async {
    await _firestore
        .collection('users')
        .doc(user.id)
        .update(user.toMap())
        .catchError((e) {
      print(e.toString());
    }).then((value) => print('updated'));
  }

  getUserInfo(String userId) async {
    return await _firestore
        .collection('users')
        .where('id', isEqualTo: userId)
        .get()
        .catchError((e) {
      print(e.toString());
    });
  }

  getUserByEmail(String email) async {
    return await _firestore
        .collection('users')
        .where('email', isEqualTo: userId)
        .get()
        .catchError((e) {
      print(e.toString());
    });
  }

  bool _hasUser() {
    if (_auth.currentUser != null) {
      return true;
    }
    return false;
  }

  Future<void> saveTokenToDatabase(String token) async {
    // Assume user is logged in for this example
    String userId = FirebaseAuth.instance.currentUser!.uid;

    _firestore.collection('users').doc(userId).update({
      'tokens': FieldValue.arrayUnion([token]),
    });
  }

  getUserToken(String id) async {
    if (id.isNotEmpty) {
      _firestore.collection('users').doc(id).get().then((documentSnapshot) {
        if (documentSnapshot.exists) {
          print('Document exists on the database');
          final data = documentSnapshot.data();
          print(data!['tokens']);
          return data['tokens'];
        }
      });
    }
  }

  updatePhoto(String uri) async {
    await _auth.currentUser!.updatePhotoURL(uri);
  }

  updateUserName(String newName) async {
    await _auth.currentUser!.updateDisplayName(newName);
  }

  get email => _auth.currentUser!.email;
  get isLogin => _hasUser();
  get userName => _auth.currentUser!.displayName;
  get userId => _auth.currentUser!.uid;
  get userUriPhoto => _auth.currentUser!.photoURL;
}
