import 'package:flutter/material.dart';

import 'SignUp.dart';

class SignUpCoverr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          resizeToAvoidBottomInset:false,
          body: SafeArea(child: SingleChildScrollView(child: SignUp()))),
    );
  }
}
