
import 'dart:async';

import 'package:data_app/Widget/Colorss.dart';
import 'package:flutter/material.dart';

import 'LoginCover.dart';

class Splash extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        body:SplashBody(),
      ),
    );
  }
}

class SplashBody extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SplashState();
  }

}

class SplashState extends State<SplashBody>{
  Logic logic;

  checkTimer()async{
    logic.waitSec(time:3);
  }

  @override
  Widget build(BuildContext context) {
    logic = Logic(context);
    checkTimer();
    return Container(
      decoration: BoxDecoration(
          color:Colors.white,
      ),
      width: MediaQuery.of(context).size.width,
      height:MediaQuery.of(context).size.height,
      child:Center(
          child:Image.asset(
              "images/logodata.jpg",
               width: 200.0,
               height:200.0
          ),
      ),
    );
  }

}


class Logic {

  BuildContext context;

  Logic(BuildContext con){
    context = con;
  }

  Future<void> waitSec({int time}) async {
    Timer timer;
    var _duration = Duration(seconds: time);

    timer = Timer(_duration, ()
    {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context )=> LoginCover()));
    });
  }

}
