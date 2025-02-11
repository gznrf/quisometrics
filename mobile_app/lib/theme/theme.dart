import 'package:flutter/material.dart';
class LightTheme {
  static ThemeData get theme {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
    );
  }
}
class DarkTheme {
  static ThemeData get theme {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.deepPurpleAccent,
      scaffoldBackgroundColor: Color(0xFF2F343A),
      appBarTheme: AppBarTheme(
        backgroundColor: Color(0xFF3B4045),
        foregroundColor: Colors.white70,
      ),
    );
  }
}