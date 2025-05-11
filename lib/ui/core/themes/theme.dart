// coverage:ignore-file

import 'package:flutter/material.dart';

abstract final class AppTheme {
  static InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.grey.shade300),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.deepPurpleAccent),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.grey.shade300),
    ),
    prefixIconColor: Colors.grey.shade400,
    labelStyle: TextStyle(color: Colors.grey.shade400),
  );

  static FilledButtonThemeData filledButtonTheme = const FilledButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(Colors.deepPurpleAccent),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),
      fixedSize: WidgetStatePropertyAll(
        Size(double.maxFinite, 54),
      ),
      textStyle: WidgetStatePropertyAll(
        TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    ),
  );

  static OutlinedButtonThemeData outlinedButtonTheme = OutlinedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(Color(0xFFEEE5FF)),
      side: WidgetStatePropertyAll(
        BorderSide(color: Colors.transparent),
      ),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),
      fixedSize: WidgetStatePropertyAll(Size(double.maxFinite, 54)),
      foregroundColor: WidgetStatePropertyAll(Colors.deepPurpleAccent),
      textStyle: WidgetStatePropertyAll(
        TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    ),
  );

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    dividerTheme: const DividerThemeData(space: 0),
    appBarTheme: const AppBarTheme(elevation: 0, centerTitle: true),
    inputDecorationTheme: inputDecorationTheme,
    filledButtonTheme: filledButtonTheme,
    outlinedButtonTheme: outlinedButtonTheme,
    fontFamily: 'Inter',
    extensions: const [],
  );

  static ThemeData darkTheme = lightTheme;
}
