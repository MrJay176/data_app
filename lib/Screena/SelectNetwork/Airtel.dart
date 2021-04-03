import 'package:flutter/material.dart';
import 'package:data_app/Widget/Colorss.dart';
import 'package:get/get.dart';


class Airtel extends StatefulWidget {

  @override
  _State createState() => _State();
}


class _State extends State<Airtel> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4 , vsync:this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        appBar:AppBar(
          title:Row(
            children:[
              InkWell(
                onTap:(){
                  Get.back();
                },
                child: Container(
                  height:50,
                  width:50,
                  child: Center(
                    child: Icon(
                      Icons.arrow_back_ios,
                      color:Colors.white,
                      size: 20.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding:EdgeInsets.symmetric(horizontal:15.0),
                  child:Text(
                    "Airtel",
                    style:TextStyle(
                      color:Colors.white,
                      fontFamily: "Montserrat",
                      fontSize:20.0,
                      fontWeight:FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
          backgroundColor:Colorss().color_top,
          bottom:TabBar(
            tabs:[
              Tab(
                child:Text("BUNDLE"),
              ),
              Tab(
                child:Text("NUMBER"),
              ),

              Tab(
                child:Text("PAY"),
              ),
              Tab(
                child:Text("REVIEW"),
              ),
            ],
            controller:_tabController,
            indicatorColor:Colors.white,
            indicatorSize:TabBarIndicatorSize.tab,
          ),
          bottomOpacity:1,
        ),
        body:TabBarView(
          controller:_tabController,
          children:[

            Container(
              child:Column(
                children: [
                  Expanded(
                    flex:1,
                    child: Container(
                      padding:EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                        children:[

                          Column(
                            children:[
                              Image.asset(
                                "",
                              ),

                              Text(
                                "Data Balance",
                                style:TextStyle(
                                  fontSize:20.0,
                                  fontWeight:FontWeight.bold,
                                  fontFamily: "Montserrat",
                                  color:Colors.blueGrey,
                                ),
                              ),

                              Text(
                                "Validity",
                                style:TextStyle(
                                  fontSize:20.0,
                                  fontWeight:FontWeight.bold,
                                  fontFamily: "Montserrat",
                                  color:Colors.blueGrey,
                                ),
                              ),
                            ],
                          ),

                          Text(
                            "Please Select Data bundle",
                            style:TextStyle(
                              fontSize:20.0,
                              fontFamily: "Montserrat",
                              fontWeight:FontWeight.bold,
                              color:Colors.blueGrey,
                            ),
                          ),

                          Container(
                            width:150.0,
                            height:50.0,
                            decoration:BoxDecoration(
                                color:Colors.red,
                                borderRadius:BorderRadius.circular(10.0)
                            ),
                            child:Center(
                              child:Text(
                                  "Update Bundle List",
                                  style:TextStyle(
                                      color:Colors.white,
                                      fontFamily: "Montserrat",
                                      fontWeight:FontWeight.bold
                                  )
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  Expanded(
                      flex:1,
                      child:ListView(
                        children:[
                          Container(
                            height: 50,
                            margin:EdgeInsets.symmetric(vertical: 10),
                            child: Center(
                              child: Text(
                                "1000MB DATA - 700",
                                style:TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize:25.0,
                                  fontWeight:FontWeight.bold,
                                  color:Colors.blueGrey,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            margin:EdgeInsets.symmetric(vertical: 10),
                            child: Center(
                              child: Text(
                                "2000MB DATA - 1050",
                                style:TextStyle(
                                  fontSize:25.0,
                                  fontFamily: "Montserrat",
                                  fontWeight:FontWeight.bold,
                                  color:Colors.blueGrey,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            margin:EdgeInsets.symmetric(vertical: 10),
                            child: Center(
                              child: Text(
                                "3000MB DATA - 1450",
                                style:TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize:25.0,
                                  fontWeight:FontWeight.bold,
                                  color:Colors.blueGrey,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            margin:EdgeInsets.symmetric(vertical: 10),
                            child: Center(
                              child: Text(
                                "4000MB DATA - 1750",
                                style:TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize:25.0,
                                  fontWeight:FontWeight.bold,
                                  color:Colors.blueGrey,
                                ),
                              ),
                            ),
                          ),

                          Container(
                            height: 50,
                            child: Center(
                              child: Text(
                                "5000MB DATA - 3500",
                                style:TextStyle(
                                  fontSize:25.0,
                                  fontFamily: "Montserrat",
                                  fontWeight:FontWeight.bold,
                                  color:Colors.blueGrey,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                  ),
                ],
              ),
            ),
            Container(
                child:Text(
                    "one"
                )
            ),
            Container(
                child:Text(
                    "one"
                )
            ),
            Container(
                child:Text(
                    "one"
                )
            ),
          ],
        ),
      ),
    );
  }

}


