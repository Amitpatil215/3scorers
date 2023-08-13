import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final brightTheme = ThemeData.light().copyWith(
  primaryColor: const Color(0xFF008F8F),
  appBarTheme: AppBarTheme(
    backgroundColor: const Color(0xFF008F8F),
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 16.sp,
    ),
  ),
  textTheme: TextTheme(
    displayLarge: TextStyle(
      color: Colors.black,
      fontSize: 18.sp,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: TextStyle(
      color: Colors.black,
      fontSize: 17.sp,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: TextStyle(
      color: Colors.black,
      fontSize: 16.sp,
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: TextStyle(
      color: Colors.black,
      fontSize: 15.sp,
    ),
    bodyMedium: TextStyle(
      color: Colors.black,
      fontSize: 14.sp,
    ),
    bodySmall: TextStyle(
      color: Colors.black,
      fontSize: 13.sp,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    fillColor: Colors.grey[200],
    filled: false,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
);
