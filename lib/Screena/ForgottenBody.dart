import 'package:data_app/Widget/Colorss.dart';
import 'package:data_app/Widget/RTextField.dart';
import 'package:flutter/material.dart';

import 'SignUp.dart';

class ForgottenBody extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return ForgottenBodyState();
  }

}

class ForgottenBodyState extends State<ForgottenBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
                colors: [Colorss().color_top, Colorss().color_bottom])),
        child: Column(
          children: [
            AppBarr(
              title: "FORGOT PASSWORD",
              background_color: Colorss().color_top,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomLeft,
                      colors: [Colorss().color_top, Colorss().color_bottom])),
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                          fontSize: 27.0,
                          color: Colorss().color_textField,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "inter quiz dictum telllus ,  a auctor lorem. Cras in biandit leo . Suspendise mauris fringilla id lerom sem.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 14.0,
                          color: Colorss().color_textField,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.normal),
                    ),
                    Container(
                      height: 8.0,
                      width: 50.0,
                      margin: EdgeInsets.only(top: 10.0),
                      color: Colorss().color_intro,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(5, 10.0, 5, 5),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 2,
                              child: Container(
                                child: RTextField(
                                    isPassword: false,
                                    label_text: "Email Address",
                                    hint_text: "Email address",
                                    distance_right: 2.0,
                                    borderColor: Colorss().text_color),
                              )),
                          Expanded(
                            flex: 1,
                            child: Container(
                              //margin: EdgeInsets.only(top: 104.0),
                              height: 50.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      Colorss().color_one,
                                      Colorss().color_two,
                                      Colorss().color_three
                                    ]),
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    // color: Colorss().color_shadow,
                                    offset: Offset(0.0, 0.25),
                                    blurRadius: 5.0,
                                  )
                                ],
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.send,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
