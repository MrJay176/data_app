import 'package:data_app/Widget/Colorss.dart';
import 'package:data_app/Widget/RTextField.dart';
import 'package:flutter/material.dart';

import 'LogIn.dart';
import 'LoginCover.dart';

class SignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return IntroBodyState();
  }
}

class IntroBodyState extends State<SignUp> {
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
              title: "Sign Up",
              background_color: Colorss().color_top,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                 color:Colors.white,
              ),
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Join us",
                                style: TextStyle(
                                    fontSize: 27.0,
                                    color: Colorss().color_textField,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold),
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
                              RTextField(
                                  isPassword: true,
                                  label_text: "Repeat Password",
                                  hint_text: "Repeat Password",
                                  borderColor: Colorss().text_color),
                              RTextField(
                                  isPassword: false,
                                  label_text: "Email",
                                  hint_text: "Email address",
                                  borderColor: Colorss().text_color),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(25.0, 10, 25, 8),
                            child: Row(
                              children: [
                                TermsContainer(
                                  isslected: false,
                                  border_color: Colorss().text_color,
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "AGREE TO OUR ",
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colorss().color_textField,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.normal),
                                ),
                                Container(
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Text(
                                          "TERMS",
                                          style: TextStyle(
                                              fontSize: 13.0,
                                              color: Colorss().color_textField,
                                              fontFamily: "Montserrat",
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Container(
                                          height: 1.2,
                                          width: 29.0,
                                          color: Colorss().text_color,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Button(
                            btn_color: [
                              Colorss().color_one,
                              Colorss().color_two,
                              Colorss().color_three
                            ],
                            btn_text: "Sign up",
                            border_color: Colorss().color_border,
                            text_color: Colorss().text_color,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          OrWidget(),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return LoginCover();
                              }));
                            },
                            child: Button(
                              btn_color: [
                                Colorss().color_transperent,
                                Colorss().color_transperent
                              ],
                              btn_text: "Login",
                              border_color: Colors.black,
                              text_color: Colors.black,
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 100,
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

class TermsContainer extends StatefulWidget {
  TermsContainer({this.isslected, this.border_color});

  bool isslected;
  Color border_color;

  @override
  _TermsContainerState createState() => _TermsContainerState();
}

class _TermsContainerState extends State<TermsContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25.0,
      width: 30.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: widget.isslected ? Colors.green : Colors.transparent,
        border: Border.all(
          color: Colors.black,
          width: 1.0,
        ),
      ),
    );
  }
}

class Button extends StatefulWidget {
  Button({
    @required this.btn_color,
    @required this.btn_text,
    this.onPressed,
    @required this.text_color,
    @required this.border_color,
  });

  Color text_color;
  Color border_color;
  List<Color> btn_color;
  String btn_text;
  Function onPressed;

  @override
  State<StatefulWidget> createState() {
    return ButtonState();
  }
}

class ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 25.0),
      decoration: BoxDecoration(
          border: Border.all(
            color: widget.border_color,
            width: 1.0,
          ),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
              colors: widget.btn_color)),
      child: Center(
        child: Text(
          widget.btn_text,
          style: TextStyle(color: widget.text_color),
        ),
      ),
    );
  }
}
class OrWidget extends StatefulWidget {
  @override
  _OrWidgetState createState() => _OrWidgetState();
}

class _OrWidgetState extends State<OrWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.symmetric(horizontal: 35.0, vertical: 4.0),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              height: 1.4,
              color:Colors.black,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Center(
                child: Text(
                  "OR",
                  style:TextStyle(
                      fontSize: 13.0,
                      color:Colors.black,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              height: 1.4,
              color:Colors.black,
            ),
          )
        ],
      ),
    );
  }
}

class AppBarr extends StatefulWidget {
  AppBarr({this.title, this.background_color});

  String title;
  Color background_color;

  @override
  _AppBarState createState() => _AppBarState();
}

class _AppBarState extends State<AppBarr> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: widget.background_color),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50.0,
          ),
          Positioned(
            left: 1,
            child: GestureDetector(
              onTap: (){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return LoginCover();
                }));
              },
              child: Container(
                height: 50,
                child: Center(
                  child: Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50.0,
              child: Center(
                child: Text(
                  widget.title,
                  style: TextStyle(
                      fontSize: 13.0,
                      color: Colorss().color_textField,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
