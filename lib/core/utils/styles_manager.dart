

import 'package:flutter/material.dart';


class TextStylesManager {

  static const String fontFamily = 'Cairo';

  static const FontWeight black = FontWeight.w900 ;
  static const FontWeight extraBold = FontWeight.w800 ;
  static const FontWeight bold = FontWeight.w700 ;
  static const FontWeight semiBold = FontWeight.w600 ;
  static const FontWeight medium = FontWeight.w500 ;
  static const FontWeight regular = FontWeight.w400 ; // normal - default
  static const FontWeight light = FontWeight.w300 ;
  static const FontWeight extraLight = FontWeight.w200 ;



   static TextStyle lightStyle({double fontSize= 14,Color? color}){
    return  TextStyle(
      fontFamily:fontFamily,
      fontWeight: light,
      fontSize: fontSize,
      color: color,

    );
  }
   static TextStyle regularStyle({double fontSize= 14,Color? color}){
    return  TextStyle(
      fontFamily: fontFamily,
      fontWeight: regular,
      fontSize: fontSize,
      color: color,

    );
  }
   static TextStyle mediumStyle({double fontSize= 14,Color? color}){
    return  TextStyle(
      fontFamily: fontFamily,
      fontWeight: medium,
      fontSize: fontSize,
      color: color,

    );
  }
   static TextStyle semiBoldStyle({double fontSize=14,Color? color}){
    return  TextStyle(
      fontFamily:fontFamily,
      fontWeight: semiBold,
      fontSize: fontSize,
      color: color,

    );
  }
   static TextStyle boldStyle({double fontSize= 14,Color? color}){
    return  TextStyle(
      fontFamily:fontFamily,
      fontWeight: bold,
      fontSize: fontSize,
      color: color,

    );
  }
   static TextStyle blackStyle({double fontSize= 14,Color? color}){
    return  TextStyle(
      fontFamily:fontFamily,
      fontWeight: black,
      fontSize: fontSize,
      color: color,

    );
  }
   static TextStyle extraBoldStyle({double fontSize= 14,Color? color}){
    return  TextStyle(
      fontFamily:fontFamily,
      fontWeight: extraBold,
      fontSize: fontSize,
      color: color,

    );
  }
   static TextStyle extraLightStyle({double fontSize= 14,Color? color}){
    return  TextStyle(
      fontFamily:fontFamily,
      fontWeight: extraLight,
      fontSize: fontSize,
      color: color,

    );
  }

}



