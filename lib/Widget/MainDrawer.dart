import 'package:data_app/Screena/FundWallet/FundWallet.dart';
import 'package:data_app/Screena/InstantFunding/InstantFunding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Colorss.dart';

class MainDrawer extends StatefulWidget {

  @override
  _DrawerState createState() => _DrawerState();

}

class _DrawerState extends State<MainDrawer> {

  @override
  Widget build(BuildContext context) {
    return Container(
        child:Column(
            crossAxisAlignment:CrossAxisAlignment.center,
            children:<Widget>[

              Container(
                  height:200.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomLeft,
                    colors: [Colorss().color_top, Colorss().color_bottom])),
                  padding:EdgeInsets.all(35),
                  child:Center(
                      child:Icon(
                          Icons.person,
                          size:100,
                          color:Colors.white
                      )
                  )
              ),

              InkWell(
                onTap:(){
                  Get.to(InstantF());
                },
                child: Container(
                  margin:EdgeInsets.only(top :20.0),
                  child: Row(
                      mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                      children:<Widget>[
                        Icon(
                          Icons.add_shopping_cart_rounded,
                          color:Colors.red,
                          size:30.0,
                        ),

                        Text(
                            'Instant Funding',
                            style:TextStyle(
                                fontSize: 17.0,
                              fontFamily: "Montserrat",
                            )
                        )
                      ]
                  ),
                ),
              ),

              InkWell(
                onTap:(){
                  Get.to(FundWallet());
                },
                child: Container(
                  margin:EdgeInsets.only(top: 20.0),
                  child: Row(
                      mainAxisAlignment:MainAxisAlignment.spaceEvenly,

                      children:<Widget>[

                        Icon(
                          Icons.attach_money,
                          color:Colors.green,
                          size:30.0,
                        ),

                        Text(
                            'Fund eWallet',
                            style:TextStyle(
                                fontSize: 17.0,
                              fontFamily: "Montserrat",
                            )
                        )
                      ]
                  ),
                ),
              ),

              SizedBox(height:15),

              GestureDetector(
                onTap:(){

                },
                child: Container(
                  margin:EdgeInsets.only(top: 20.0),
                  child:Row(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                      children:<Widget>[

                        Icon(
                            Icons.history,
                            color:Colors.green,
                            size:30.0,
                        ),

                        Text(
                            'Order History',
                            style:TextStyle(
                                fontSize: 17.0,
                              fontFamily: "Montserrat",
                            )
                        )

                      ]
                  ),
                ),
              ),
              SizedBox(height:15),
              Container(
                margin:EdgeInsets.only(top: 20.0),
                child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,

                    children:<Widget>[

                      Icon(
                        Icons.ad_units_rounded,
                        color:Colors.blueAccent,
                        size:30.0,
                      ),

                      Text(
                          'Purchase Data',
                          style:TextStyle(
                              fontSize: 17.0,
                              fontFamily: "Montserrat",
                          )
                      )
                    ]
                ),
              ),
              SizedBox(height:15),
              Container(
                margin:EdgeInsets.only(top: 20.0),
                child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    children:<Widget>[

                      Icon(
                        Icons.add_ic_call_outlined,
                        color:Colors.green,
                        size:30.0,
                      ),
                      Text(
                          'Buy Airtime',
                          style:TextStyle(
                              fontSize: 17.0,
                            fontFamily: "Montserrat",
                          )
                      )
                    ]
                ),
              ),
              SizedBox(height:15),
              Container(
                margin:EdgeInsets.only(top: 20.0),
                child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    children:<Widget>[

                      Icon(
                        Icons.alternate_email_rounded,
                        color:Colors.green,
                        size:30.0,
                      ),

                      Text(
                          'Bill Payments',
                          style:TextStyle(
                              fontSize: 17.0,
                            fontFamily: "Montserrat",
                          )
                      ),
                    ]
                ),
              ),
              SizedBox(height:15),
            ]
        )
    );
  }

}
