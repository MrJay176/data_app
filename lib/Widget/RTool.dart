import 'package:flutter/material.dart';

import 'Colorss.dart';

class RtoolHome extends StatelessWidget {

  RtoolHome(
  {
    this.opPressed,
  });

  Function opPressed;

  @override
  Widget build(BuildContext context) {

    return Container(
      padding:EdgeInsets.symmetric(horizontal: 10.0) ,
      color:Colorss().color_top,
      height:50.0,
      child: Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween,
        crossAxisAlignment:CrossAxisAlignment.center,
        children:[
          InkWell(
            onTap: (){
              opPressed;
            },
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              crossAxisAlignment:CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: opPressed,
                  child: Container(
                    height:50.0,
                    width:50.0,
                    child: Icon(
                      Icons.format_list_bulleted,
                      color:Colors.white,
                      size: 20.0,
                    ),
                  ),
                ),

                SizedBox(width:10.0),

                Text(
                  "Cheap Data",
                    style:TextStyle(
                        color:Colors.white,
                        fontSize: 17.0,
                        fontWeight:FontWeight.bold
                    )
                ),


              ],
            ),
          ),

          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween ,
            children: [
              Icon(
                Icons.chat_bubble_outline,
                color:Colors.white,
                size: 20.0,
              ),
              SizedBox(width:10.0),
              Icon(
                Icons.work_rounded,
                color:Colors.white,
                size: 20.0,
              ),
              Visibility(
                visible:false,
                child: Icon(
                  Icons.add,
                  color:Colors.white,
                  size: 20.0,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}