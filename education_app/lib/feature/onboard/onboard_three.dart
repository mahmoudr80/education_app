import 'package:education_app/feature/auth/presentation/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../gen/assets.gen.dart';

class OnboardThree extends StatelessWidget {
  const OnboardThree({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffAB93E0),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Learn and\npractrice",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 30.sp,
              fontWeight: FontWeight.bold,
              height: .8.h,
            ),
          ),
          SizedBox(height: 30.h,),
          Image.asset(Assets.images.onboardPracticeImg.path,fit: BoxFit.contain,),
          SizedBox(height: 30.h,),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: InkWell(
                onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => WelcomeScreen(),)),
                child: Container(
                  height: 50.h,
                  width: 130.w,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    border: Border.all(color: Colors.black,width: 2.w),

                  ),
                  child: Center(child: Text("Next",style: TextStyle( color: Colors.black,
                      fontWeight: FontWeight.bold,fontSize: 18.sp),)),
                ),
              ),
            ),
          )
        ],
      ),
    );

  }
}
