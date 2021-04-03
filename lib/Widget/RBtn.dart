import 'package:flutter/material.dart';

class RBtn extends StatefulWidget {

  RBtn({
    this.NetWork,
    this.colorTpye,
    this.onPressed,
  });

  String NetWork;
  Color colorTpye;
  Function onPressed;

  @override
  _RBtnState createState() => _RBtnState();
}

class _RBtnState extends State<RBtn> {
  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.symmetric(vertical:10.0),
      width: 150.0,
      height:50.0,
      decoration: BoxDecoration(
        color:widget.colorTpye,
        borderRadius:BorderRadius.circular(15.0),
      ),
      child:Center(
        child: Text(
          widget.NetWork,
           style:TextStyle(
             color: Colors.white,
             fontWeight:FontWeight.bold,
           ),
        ),
      ),
    );
  }
}