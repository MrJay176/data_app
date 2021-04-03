import 'package:data_app/Widget/Colorss.dart';
import 'package:data_app/Widget/RTextField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FundWallet extends StatefulWidget {

  @override
  _FundWalletState createState() => _FundWalletState();


}

class _FundWalletState extends State<FundWallet> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3 , vsync:this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          title:Row(
           children:[
             GestureDetector(
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
                  "Fund Wallet",
                  style:TextStyle(
                    color:Colors.white,
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
                child:Text("AMOUNT"),
              ),
              Tab(
                child:Text("PAYMENT"),
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
              width:double.infinity,
              height:double.infinity,
              color:Colors.white,
              child:Column(
                crossAxisAlignment:CrossAxisAlignment.center,
                children:[
                  Icon(
                    Icons.account_balance_wallet_rounded,
                    size:70,
                    color:Colors.blueGrey
                  ),

                  RTextField(
                      isPassword: false,
                      hint_text:"Amount",
                      label_text:"Amount",
                      borderColor: Colorss().text_color),

                  Container(
                    width:150.0,
                    height:50.0,
                    decoration:BoxDecoration(
                      color:Colorss().color_top,
                      borderRadius:BorderRadius.circular(10.0)
                    ),
                    child:Center(
                      child:Text(
                        "NEXT",
                        style:TextStyle(
                          color:Colors.white,
                          fontWeight:FontWeight.bold
                        )
                      ),
                    ),
                  )

                ]
              )
            ),
            Container(
              width:double.infinity,
              height:double.infinity,
              color:Colors.red,
            ),
            Container(
              width:double.infinity,
              height:double.infinity,
              color:Colors.green
            ),
          ],
        )
      ),
    );
  }
}
