import 'package:flutter/material.dart';

class AppTheme {
  static Color blue = Colors.blue;
  static Color white = Colors.white;
  static Color black = Colors.black;
  static Color darkBlue = Color(0xff121A21);

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,

      appBarTheme: AppBarThemeData(backgroundColor: AppTheme.darkBlue),
      scaffoldBackgroundColor: AppTheme.darkBlue,
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w400,
          color: AppTheme.white,
        ),
        titleMedium: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: AppTheme.white,
        ),
        titleSmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppTheme.white,
        ),
      ),

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppTheme.darkBlue,
        selectedItemColor: AppTheme.blue,
        unselectedItemColor: AppTheme.white,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
      ),
      cardTheme: CardThemeData(color: AppTheme.white, elevation: 4),
    );
  }
}
