
import 'package:education_app/feature/auth/presentation/screens/login_screen.dart';
import 'package:education_app/feature/auth/presentation/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../gen/assets.gen.dart';
import '../widgets/custom_button.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDCC1FF),
      body: SafeArea(child:   Padding(
        padding: const EdgeInsets.only(top: 120),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Let’s start\nyour career!", style:
              TextStyle(
                  fontSize: 45.sp,
                  height: .99.h,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
                textAlign: TextAlign.center,
              ),
              Image.asset(
               Assets.images.onboardStartImg.path,
                width: 350.w,
                height: 360.h,
              ),
              CustomButton(
                  tapped:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                  } ,
                  title: "Sign in",
                  backgroundColor:const Color(0xffF5F378) ,
                ),
              SizedBox(height: 10.h),
              CustomButton(
                tapped:  (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => SignUpScreen(),));
                },
                title: "Sign up", backgroundColor: Color(0xffFFFFFF),)
            ],
          ),
        ),
      )
      ),
    );
  }
}