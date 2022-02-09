import 'package:flutter/material.dart';

class AppTheme {
  static Color get primaryColor => const Color(0xFFF38704);
  static Color get textColor => const Color(0xFF000000);
  static Color get backgroundColor => const Color(0xFFFFFFFF);

  static ThemeData get lightTheme => ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: const TextStyle(
            color: Color(0xFFC4C4C4),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: primaryColor,
            ),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: primaryColor,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: primaryColor,
            ),
          ),
        ),
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
            color: primaryColor,
          ),
          headline2: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: primaryColor,
          ),
          headline3: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: primaryColor,
          ),
          bodyText2: TextStyle(
            fontSize: 18,
            color: textColor,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            elevation: 0,
            shadowColor: Colors.transparent,
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: backgroundColor,
          elevation: 0,
          iconTheme: IconThemeData(
            color: textColor,
          ),
        ),
        scaffoldBackgroundColor: backgroundColor,
        primaryColor: primaryColor,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: backgroundColor,
          elevation: 0,
          selectedIconTheme: IconThemeData(
            color: primaryColor,
          ),
          unselectedIconTheme: IconThemeData(
            color: textColor,
          ),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: primaryColor,
        ),
      );
}
