import 'dart:ui';

import 'package:flutter/material.dart';

class appthem{
  static Color primarygreencolor=Color(0xff39A552);
  static Color primarybluecolor=Color(0xff707070);

  static ThemeData lightmode = ThemeData(
    primaryColor: primarygreencolor,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: primarygreencolor,
      shape:RoundedRectangleBorder(
        borderRadius:BorderRadius.only(
          bottomLeft: Radius.circular(35),
              bottomRight: Radius.circular(35)))
    ),
    primaryTextTheme: TextTheme(
      headline1: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w400
          ,fontSize: 22,
      ),
          headline2:  TextStyle(
      color: primarybluecolor,
      fontWeight: FontWeight.bold
      ,fontSize: 24,
    ),
      headline3:  TextStyle(
      color: primarybluecolor,
      fontWeight: FontWeight.w200
      ,fontSize: 24,
    ),
      )
  );
}