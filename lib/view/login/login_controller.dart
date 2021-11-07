import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:horoscope_guide/model/user_model.dart';

class LoginController extends GetxController {
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;

  MyUser? _userFromFirebase(User user) {
    return MyUser(uid: user.uid);
  }

  Stream<MyUser?> get user {
    return auth
        .authStateChanges()
        .map((User? user) => _userFromFirebase(user!));
  }

  Future signIn() async {
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: emailCtrl.text, password: passwordCtrl.text);
      User? user = userCredential.user;
      return _userFromFirebase(user!);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
}
