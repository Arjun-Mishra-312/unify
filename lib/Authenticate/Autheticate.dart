import 'package:unify/Authenticate/LoginScree.dart';
import 'package:unify/Screens/MainScreen.dart';
import 'package:unify/Screens/MessageScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:unify/Screens/PostScreen.dart';

class Authenticate extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    if (_auth.currentUser != null) {
      return MainScreen();
    } else {
      return LoginScreen();
    }
  }
}
