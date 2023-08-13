import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scorers/Screens/base_screen/base_screen.dart';
import 'package:scorers/Utils/theme/bright_theme.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, snapshot) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: brightTheme,
            home: const BaseScreen(),
          );
        });
  }
}

