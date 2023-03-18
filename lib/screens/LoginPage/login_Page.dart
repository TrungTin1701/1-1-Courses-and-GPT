// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:oneonecourse_app/screens/LoginPage/Components/userslogin.dart';
 

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.asset("assets/image/welcome-one.png").image,
            fit: BoxFit.cover,
          ),
        ),
        child: UserLogin(),
      ),
    );
  }
}
