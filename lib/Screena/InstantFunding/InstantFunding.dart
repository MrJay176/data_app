import 'package:data_app/Screena/Utils/constants.dart';
import 'package:data_app/Widget/Colorss.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InstantF extends StatefulWidget {

  @override
  _InstantFState createState() => _InstantFState();

}

class _InstantFState extends State<InstantF> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        appBar:AppBar(
          elevation:2.0,
          title:Row(
            children:[
              InkWell(
                onTap:(){
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color:Colors.white,
                  size: 20.0,
                ),
              ),
              Expanded(
                child: Container(
                  padding:EdgeInsets.symmetric(horizontal:15.0),
                  child:Text(
                    "Cheap Data",
                    style:TextStyle(
                      color:Colors.white,
                      fontSize:20.0,
                      fontFamily: "Montserrat",
                      fontWeight:FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
          backgroundColor:Colorss().color_top,
          bottomOpacity:1,
        ),
        body:Container(
          height:double.infinity,
          width:double.infinity,
          padding:EdgeInsets.symmetric(horizontal:10),
          child:Column(
           children:[
             Expanded(
               flex:1,
               child: Column(
                 children:[
                   Container(
                     width:double.infinity,
                     margin: EdgeInsets.symmetric(vertical:8.0),
                     child:Center(
                       child:Text(
                         "Instant eWallet Top-Up",
                         style:TextStyle(
                           fontSize:20.0,
                           fontWeight:FontWeight.bold,
                           fontFamily: "Montserrat",
                           color:Colors.blueGrey,
                         ),
                       ),
                     ),
                   ),
                   Container(
                     margin: EdgeInsets.symmetric(vertical:8.0),
                     child:Text(
                       "${Constant().info}",
                       style:TextStyle(
                         fontSize:15.0,
                         fontWeight:FontWeight.bold,
                         fontFamily: "Montserrat",
                         color:Colors.blueGrey,
                       ),
                     ),
                   ),
                   Container(
                     margin: EdgeInsets.symmetric(vertical:8.0),
                     child:Text(
                       "${Constant().info_two}",
                       style:TextStyle(
                         fontSize:15.0,
                         fontWeight:FontWeight.bold,
                         fontFamily: "Montserrat",
                         color:Colors.blueGrey,
                       ),
                     ),
                   ),

                   Container(
                     margin: EdgeInsets.symmetric(vertical:8.0),
                     child:Text(
                       "${Constant().hint}",
                       style:TextStyle(
                         fontSize:15.0,
                         fontWeight:FontWeight.bold,
                         fontFamily: "Montserrat",
                         color:Colors.blueGrey,
                       ),
                     ),
                   ),

                   Container(
                     margin: EdgeInsets.symmetric(vertical:8.0),
                     child:Text(
                       "${Constant().info_three}",
                       style:TextStyle(
                         fontSize:17.0,
                         fontWeight:FontWeight.bold,
                         fontFamily: "Montserrat",
                         color:Colors.blueGrey,
                       ),
                     ),
                   ),
                 ],
               ),
             ),
             Expanded(
               flex:1,
               child: Padding(
                 padding: const EdgeInsets.only(bottom:18.0),
                 child: Column(
                   mainAxisAlignment:MainAxisAlignment.end,
                   children:[
                     Card(
                       shape:RoundedRectangleBorder(
                        borderRadius:BorderRadius.circular(20),
                        side:BorderSide(
                          color:Colors.grey.withOpacity(0.2),
                          width:1,
                        ),
                      ),
                       child:Container(
                         padding:EdgeInsets.all(10.0),
                         child:Column(
                           children:[
                             Text(
                               "${Constant().bank_name}",
                               style:TextStyle(
                                 fontSize:20.0,
                                 fontWeight:FontWeight.bold,
                                 fontFamily: "Montserrat",
                                 color:Colors.blueGrey,
                               ),
                             ),
                             Text(
                               "${Constant().account_number}",
                               style:TextStyle(
                                 fontSize:20.0,
                                 fontWeight:FontWeight.bold,
                                 fontFamily: "Montserrat",
                                 color:Colors.blueGrey,
                               ),
                             ),
                             Text(
                               "${Constant().last}",
                               style:TextStyle(
                                 fontSize:20.0,
                                 fontWeight:FontWeight.bold,
                                 fontFamily: "Montserrat",
                                 color:Colors.blueGrey,
                               ),
                             ),

                           ],
                         ),
                       ),
                     )

                   ],
                 ),
               ),
             ),
           ],
          ),
        ),
      )
    );
  }
}
