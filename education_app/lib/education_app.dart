

import 'package:education_app/feature/auth/presentation/screens/login_screen.dart';
import 'package:education_app/feature/auth/presentation/screens/sign_up_screen.dart';
import 'package:education_app/feature/auth/presentation/screens/welcome_screen.dart';
import 'package:education_app/feature/home/presentation/screens/home_screen.dart';
import 'package:education_app/feature/main/presentation/main_screen.dart';
import 'package:education_app/feature/onboard/onboard_three.dart';
import 'package:education_app/feature/onboard/onboard_one.dart';
import 'package:education_app/feature/onboard/onboard_two.dart';
import 'package:education_app/feature/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EducationApp extends StatelessWidget {
  const EducationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        theme: ThemeData(
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          textTheme: const TextTheme(
            bodyLarge: TextStyle(color: Colors.white),
            bodyMedium: TextStyle(color: Colors.white),
            bodySmall: TextStyle(color: Colors.white),
            titleLarge: TextStyle(color: Colors.white),
            titleMedium: TextStyle(color: Colors.white),
            titleSmall: TextStyle(color: Colors.white),
            labelLarge: TextStyle(color: Colors.white),
            labelMedium: TextStyle(color: Colors.white),
            labelSmall: TextStyle(color: Colors.white),
          ),
          brightness: Brightness.light, // 🔒 force light mode
          scaffoldBackgroundColor: Color(0xff1A1A1A), // 🎯 ONE background for all
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xffFFFFFF),
            brightness: Brightness.light,
          ),
        ),

        themeMode: ThemeMode.dark,

        home: MainScreen(),
      ),
    );
  }
}
