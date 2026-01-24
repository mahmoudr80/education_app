import 'package:education_app/feature/auth/presentation/screens/welcome_screen.dart';
import 'package:education_app/feature/onboard/onboard_one.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2)).then((value) => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) =>OnboardOne() ,)),);

  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffD2FF1F),
      body:Center(child: Text("CareerPlace//",style: TextStyle(color:Colors.black,
          fontSize: 36.sp,fontWeight: FontWeight.bold),)),
    );

  }
}
