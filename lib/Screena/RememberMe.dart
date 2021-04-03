

import 'package:flutter/material.dart';

class RememberMe extends StatefulWidget {
  RememberMe({
    this.first_color,
    this.second_color,
    this.accepted_color,
    this.isAccepted,
  });

  Color first_color;
  Color second_color;
  Color accepted_color;
  bool isAccepted;

  @override
  _RememberMeState createState() => _RememberMeState();
}

class _RememberMeState extends State<RememberMe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(1.0),
            width: 70.0,
            height: 30.0,
            decoration: BoxDecoration(
              color: widget.first_color,
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
          ),
          Positioned(
            left: 2.0,
            top: 2.0,
            bottom: 2.0,
            child: Visibility(
              visible: true,
              child: Container(
                width: 25.0,
                height: 25.0,
                margin: EdgeInsets.all(1.0),
                decoration: BoxDecoration(
                  color: widget.second_color,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
          Positioned(
            right: 1.0,
            top: 2.0,
            bottom: 2.0,
            child: Visibility(
              visible: false,
              child: Container(
                width: 25.0,
                height: 25.0,
                margin: EdgeInsets.all(1.0),
                decoration: BoxDecoration(
                  color: widget.accepted_color,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
