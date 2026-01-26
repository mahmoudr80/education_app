

import 'package:education_app/feature/auth/presentation/screens/login_screen.dart';
import 'package:education_app/feature/auth/presentation/screens/sign_up_screen.dart';
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
        theme: ThemeData.dark(),
       themeMode:ThemeMode.dark ,
        home: SignUpScreen(),
      ),
    );
  }
}
