import 'dart:ui';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mytheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      cardColor: Colors.white,
      canvasColor: creamColor,
      accentColor: darkBluish,
      buttonColor: darkBluish,
      fontFamily: GoogleFonts.poppins().fontFamily,
      // primaryTextTheme: GoogleFonts.poppinsTextTheme(),
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.black),
        textTheme: Theme.of(context).textTheme,
      ));





  static ThemeData darkTheme(BuildContext context) => ThemeData(
    brightness: Brightness.dark,
      cardColor: Colors.black,
      canvasColor: darkcream,
      buttonColor: lightBluish,
      accentColor: Colors.white,
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      // primaryTextTheme: GoogleFonts.poppinsTextTheme(),
      appBarTheme: AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.white),
        textTheme: Theme.of(context).textTheme,
      ));

  //colors
  static Color creamColor = const Color(0xfff5f5f5);
  static Color darkBluish = const Color(0xff403b58);
  static Color darkcream = Vx.gray900;
  static Color lightBluish = Vx.indigo900;
}
