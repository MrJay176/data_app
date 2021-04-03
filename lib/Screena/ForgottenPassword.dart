import 'package:flutter/material.dart';

import 'ForgottenBody.dart';

class ForgottenPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          resizeToAvoidBottomInset:false,
          body: SafeArea(child: SingleChildScrollView(child: ForgottenBody()))),
    );
  }
}
