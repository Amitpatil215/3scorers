import 'package:flutter/material.dart';

final darkTheme = ThemeData.dark().copyWith(
  primaryColor: const Color(0xFF008F8F),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF008F8F),
    titleTextStyle: TextStyle(
      color: Colors.white,
    ),
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      color: Colors.white,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: TextStyle(
      color: Colors.white,
      fontSize: 18,
    ),
    bodyMedium: TextStyle(
      color: Colors.white,
      fontSize: 14,
    ),
    bodySmall: TextStyle(
      color: Colors.white,
      fontSize: 12,
    ),
    // Add more text styles as needed
  ),
  inputDecorationTheme: InputDecorationTheme(
    fillColor: Colors.grey[800],
    filled: false,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
);
