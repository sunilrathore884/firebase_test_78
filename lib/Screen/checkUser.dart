import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_test_78/Screen/HomeScreen.dart';
import 'package:firebase_test_78/Screen/Signup.dart';
import 'package:flutter/material.dart';


class CheckUser extends StatefulWidget {
  const CheckUser({super.key});

  @override
  State<CheckUser> createState() => _CheckUserState();
}

class _CheckUserState extends State<CheckUser> {
  @override
  Widget build(BuildContext context) {
    return _checkUser();
  }
  _checkUser(){
    if (FirebaseAuth.instance.currentUser != null) {
      return HomeScreen();
    }
    else{
      return Signup();
    }

  }
}
