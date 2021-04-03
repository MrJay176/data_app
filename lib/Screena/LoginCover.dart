import 'package:flutter/material.dart';
import 'LogIn.dart';

class LoginCover extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LoginCover> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          resizeToAvoidBottomInset:false,
          body: SafeArea(child: SingleChildScrollView(child: LoginBody()))),
    );
  }
}
