import 'package:data_app/Screena/FundWallet/FundWallet.dart';
import 'package:data_app/Screena/SelectNetwork/Airtel.dart';
import 'package:data_app/Screena/SelectNetwork/Glo.dart';
import 'package:data_app/Screena/SelectNetwork/MTN.dart';
import 'package:get/get.dart';
import 'package:data_app/Widget/MainDrawer.dart';
import 'package:data_app/Widget/RBtn.dart';
import 'package:data_app/Widget/RTool.dart';
import 'package:flutter/material.dart';

import 'SelectNetwork/9Mobile.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {

  GlobalKey<ScaffoldState> _drawerkey = GlobalKey();

  _openDrawer(){
    _drawerkey.currentState.openDrawer();
  }

  @override
  Widget build(BuildContext contextt) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
         key:_drawerkey,
          drawer:Drawer(
            child:MainDrawer(),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor:Colors.orange,
            onPressed:(){

            },
            child: Icon(Icons.add),
          ),
        body:SafeArea(
          child: Container(
            child:SingleChildScrollView(
              child: Column(
                children:[
                  RtoolHome(
                    opPressed:(){
                      _openDrawer();
                    },
                  ),
                  centerWid(),
                  Container(
                    height:280.0,
                    child: Column(
                      children:[
                        GestureDetector(
                          onTap:(){
                           Get.to(MTN());
                          },
                          child:  Container(
                            margin: EdgeInsets.symmetric(vertical:10.0),
                            width: 150.0,
                            height:50.0,
                            decoration: BoxDecoration(
                              color:Colors.orange,
                              borderRadius:BorderRadius.circular(15.0),
                            ),
                            child:Center(
                              child: Text(
                                "MTN",
                                style:TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Montserrat",
                                  fontWeight:FontWeight.bold,
                                ),
                              ),
                            ),
                          )
                        ),
                        InkWell(
                          onTap:(){
                            Get.to(Glo());
                          },
                          child:RBtn(
                            NetWork:"GLO",
                            colorTpye: Colors.green,
                          ),
                        ),
                        InkWell(
                          onTap:(){
                            Get.to(Airtel());
                          },
                          child: RBtn(
                            NetWork: "AIRTEL",
                            colorTpye:Colors.red,
                          ),
                        ),
                        InkWell(
                          onTap:(){
                            Get.to(NMobile());
                          },
                          child: RBtn(
                            NetWork: "9MOBILE",
                            colorTpye:Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    children:[
                      Container(
                        height:100,
                      ),
                      Positioned(
                        top:10.0,
                        bottom:10.0,
                        right:10.0,
                        left:10.0,
                        child: FittedBox(
                          child: Column(
                            children:[
                              Text(
                                  "Your eWallet",
                                  style:TextStyle(
                                      color:Colors.black54,
                                      fontSize:10.0,
                                      fontFamily: "Montserrat",
                                      fontWeight:FontWeight.bold
                                  )
                              ),
                              Text(
                                  "N0.00",
                                  style:TextStyle(
                                      color:Colors.deepOrange,
                                      fontSize:15.0,
                                      fontFamily: "Montserrat",
                                      fontWeight:FontWeight.bold
                                  )
                              ),
                            ],
                          ),
                        ),
                      ),

                      Positioned(
                        bottom:1.0,
                        child: FittedBox(
                          child: Text(
                              "Works on all devices: Android , iPhones , BB10 devices PC/Laptop and Moderms",
                              style:TextStyle(
                                  color:Colors.black54,
                                  fontSize:9.5,
                                  fontFamily: "Montserrat",
                                  fontWeight:FontWeight.bold
                              )
                          ),
                        ),
                      ),

                    ],
                  )

                ],
              ),
            ),
          ),
        ) ,
      ),
    );
  }
}

 Widget centerWid (){
  return Container(
    margin:EdgeInsets.only(top:20) ,
    height: 150.0,
    width: double.infinity,
    child:Column(
      children:[
        Text(
          "Welcome Isaac",
          style:TextStyle(
            color:Colors.black54,
            fontSize: 17.0,
              fontFamily: "Montserrat",
            fontWeight:FontWeight.bold
          )
        ),
    SizedBox(height: 8.0,),
    Text(
      "08132027514",
      style:TextStyle(
          color:Colors.blueAccent,
          fontSize: 17.0,
          fontFamily: "Montserrat",
          fontWeight:FontWeight.bold
      )
    )],
    ),
  );
}

 Widget yourWallet(Size size){
    return Column(
      children:[
        Text(
            "Welcome Isaac",
            style:TextStyle(
                color:Colors.black54,
                fontSize: 17.0,
                fontWeight:FontWeight.bold
            )
        ),
        SizedBox(height:10.0),

        Text(
            "N20.00",
            style:TextStyle(
                color:Colors.black54,
                fontSize: 17.0,
                fontWeight:FontWeight.bold
            )
        ),
      ],
    );
 }
