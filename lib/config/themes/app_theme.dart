import 'package:flutter/material.dart';
import 'package:paymob_payment/core/utils/colors_app.dart';
import 'package:paymob_payment/core/utils/styles_manager.dart';


ThemeData appTheme() {
  return ThemeData(

    // main color
    primaryColor:  ColorsApp.primaryColor,
    primaryColorLight: ColorsApp.primaryColor,
    primaryColorDark:ColorsApp.primaryColor ,
    disabledColor: Colors.grey,
    scaffoldBackgroundColor: Colors.white,
    splashColor: ColorsApp.primaryColor,

    // card theme
    cardTheme: CardTheme(
      color: Colors.white,
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),

    // text theme
    textTheme:  TextTheme(
      headline1: TextStylesManager.boldStyle(fontSize:30,color: Colors.black) ,
      headline2: TextStylesManager.boldStyle(fontSize:24,color: Colors.black) ,),

    // appbar theme
    appBarTheme:  AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      iconTheme: const IconThemeData(color:Colors.black),
      titleTextStyle: TextStylesManager.semiBoldStyle(color: Colors.black,fontSize: 16),
      centerTitle: true,
    ),

bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Colors.transparent),
    // elevated ButtonTheme
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            textStyle: TextStylesManager.semiBoldStyle(color:Colors.white ),
            primary: ColorsApp.primaryColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))
        )
    ),

    // input decoration Theme
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(10),
      hintStyle: TextStylesManager.regularStyle(color: Colors.grey),
      labelStyle:  TextStylesManager.regularStyle(color: Colors.black),
      errorStyle:  TextStylesManager.regularStyle(color: Colors.red),
      enabledBorder:  const OutlineInputBorder(
          borderSide:BorderSide(color:Colors.grey , width:1 ),
          borderRadius: BorderRadius.all(Radius.circular(14))

      ),
      focusedBorder:  const OutlineInputBorder(
          borderSide:BorderSide(color:ColorsApp.primaryColor , width:1 ),
          borderRadius: BorderRadius.all(Radius.circular(14))

      ),
      errorBorder: const OutlineInputBorder(
          borderSide:BorderSide(color:Colors.red , width:1 ),
          borderRadius: BorderRadius.all(Radius.circular(14))

      ),
      focusedErrorBorder: const OutlineInputBorder(
          borderSide:BorderSide(color:ColorsApp.primaryColor , width:1 ),
          borderRadius: BorderRadius.all(Radius.circular(14))

      ),



    ),

  );
}
