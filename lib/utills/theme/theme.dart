import 'package:e_mart/utills/theme/custom_themes/elevated_button_theme.dart';
import 'package:e_mart/utills/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme{

  TAppTheme._();
  static ThemeData lightTheme=ThemeData(

    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    elevatedButtonTheme:TElevatedButtonTheme.lightElevatedButtonTheme
  );
  static ThemeData darkTheme=ThemeData(
    useMaterial3: true,
      fontFamily: "Poppins",
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: TTextTheme.darkTextThem,
      elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme

  );
}