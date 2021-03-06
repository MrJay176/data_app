import 'package:flutter/material.dart';

import 'Colorss.dart';

class RTextField extends StatefulWidget {

  RTextField(
      {this.controller,
        this.hint_text,
        this.borderColor,
        this.isPassword,
        this.distance_right = 25.0,
        this.label_text});

  TextEditingController controller;
  String hint_text;
  String label_text;
  double distance_right;
  bool isPassword;
  bool readOnly;
  Color borderColor;

  @override
  State<StatefulWidget> createState() {
    return TextFieldState();
  }
}

class TextFieldState extends State<RTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(25.0, 10,
          null == widget.distance_right ? 25 : widget.distance_right, 8),
      child: TextFormField(
        cursorColor: Colors.black,
        obscureText:widget.isPassword,
        decoration:InputDecoration(
            hintText: widget.hint_text,
            hintStyle: TextStyle(
                fontFamily: "Montserrat", fontWeight: FontWeight.w200),
            labelText: widget.label_text,
            labelStyle: TextStyle(
                color: Colors.black,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w500
            ),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 1.2)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 1.0))),
      ),
    );
  }
}
