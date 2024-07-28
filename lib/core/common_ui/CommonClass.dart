
import 'package:flutter/material.dart';
var fontSize32=32;
var fontSize50=50;
var fontSize16=16;
var fontSize14=14;
var fontSize18=18;
class CommonClass{
  String uid="";
  String userName="";
  getUserData()async{
   /* uid=await AppSharedPref.getInfo("uid");
    userName=await AppSharedPref.getInfo("userName");*/
  }

  static ErrorText({required String text,required Color color,required double fontSize,required String fontFamily,required FontWeight fontWeight,var value,var textAlign}){
    return Text(
      textScaleFactor: 1.0,
      textAlign:textAlign!=null&&textAlign=="center"?TextAlign.center:TextAlign.left,
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily:fontFamily,
        fontWeight: fontWeight,
        decoration: TextDecoration.none,
        shadows:value!=null? <Shadow>[
          const Shadow(
            offset: Offset(0.0, 6.0),
            blurRadius: 3.0,
            color: Color.fromRGBO(0, 0, 0, 0.10),
          ),
          const Shadow(
            offset: Offset(6.0,4.0),
            blurRadius: 8.0,
            color: Color.fromRGBO(0, 0, 0, 0.10),
          ),
        ]:[],

      ),
    );
  }


  static getFontSize(){

  }
 static normalText({required String text,required Color color,required double fontSize,required String fontFamily,required FontWeight fontWeight,var value,var textAlign}){
    return Text(
      textScaleFactor: 1.0,
      textAlign:textAlign!=null&&textAlign=="center"?TextAlign.center:TextAlign.left,
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily:fontFamily,
        fontWeight: fontWeight,
        decoration: TextDecoration.none,
          shadows:value!=null? <Shadow>[
      const Shadow(
      offset: Offset(0.0, 6.0),
      blurRadius: 3.0,
        color: Color.fromRGBO(0, 0, 0, 0.10),
      ),
   const Shadow(
   offset: Offset(6.0,4.0),
   blurRadius: 8.0,
   color: Color.fromRGBO(0, 0, 0, 0.10),
   ),
   ]:[],

      ),
    );
  }
  static normalTextRight({required String text,required Color color,required double fontSize,required String fontFamily,required FontWeight fontWeight}){
    return Text(
      textScaleFactor: 1.0,
      textAlign: TextAlign.right,
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily:fontFamily,
        fontWeight: fontWeight,
        decoration: TextDecoration.none
      ),
    );
  }


}