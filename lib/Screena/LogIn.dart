
import 'package:data_app/Screena/ForgottenPassword.dart';
import 'package:data_app/Screena/SignUpCoverr.dart';
import 'package:data_app/Widget/Colorss.dart';
import 'package:data_app/Widget/RTextField.dart';
import 'package:flutter/material.dart';

import 'HomeScreen.dart';
import 'RememberMe.dart';
import 'SignUp.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          resizeToAvoidBottomInset:false,
          body: SingleChildScrollView(child: LoginBody())),
    );
  }
}


class LoginBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return IntroBodyState();
  }
}

class IntroBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color:Colors.white,
      ),
      child: Column(
        children: [
          AppBarr(
            title: "LOGIN",
            background_color: Colorss().color_top,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
             color:Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        //    margin: EdgeInsets.only(top: 190.0),
                        child: Text(
                          "LogIn",
                          style: TextStyle(
                              fontSize: 25.0,
                              color: Colorss().color_textField,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      RTextField(
                          isPassword: false,
                          hint_text: "Username",
                          label_text: "Username",
                          borderColor: Colorss().text_color),
                      RTextField(
                          isPassword: true,
                          hint_text: "Password",
                          label_text: "Password",
                          borderColor: Colorss().text_color),
                      Container(
                        margin: EdgeInsets.fromLTRB(25.0, 10, 25, 8),
                        child: Row(
                          children: [
                            RememberMe(
                              first_color: Colorss().remember_color,
                              second_color: Colorss().remember_base,
                              accepted_color: Colorss().color_green,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              "REMEMBER ME ? ",
                              style: TextStyle(
                                  fontSize: 13.0,
                                  color: Colors.black,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return HomePage();
                          }));
                        },
                        child: Button(
                          btn_color: [
                            Colorss().color_one,
                            Colorss().color_two,
                            Colorss().color_three
                          ],
                          btn_text: "Log In",
                          text_color: Colorss().text_color,
                          border_color: Colorss().color_border,
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return ForgottenPassword();
                            }));
                          },
                          child: Expanded(
                            child: Container(
                              height: 50,
                              margin: EdgeInsets.fromLTRB(1, 9, 9, 6),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "Forgotten Password ? ",
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.black,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      OrWidget(),

                      SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return SignUpCoverr();
                          }));
                        },
                        child: Button(
                          btn_color: [
                            Colorss().color_transperent,
                            Colorss().color_transperent
                          ],
                          btn_text: "Sign Up",
                          border_color: Colors.black,
                          text_color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
