import 'package:education_app/feature/onboard/onboard_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../gen/assets.gen.dart';

class OnboardOne extends StatelessWidget {
  const OnboardOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDCC1FF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome\nto careerspace",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 30.sp,
              fontWeight: FontWeight.bold,
              height: .8.h,
            ),
          ),
          SizedBox(height: 30.h,),
          Image.asset(Assets.images.onboardSpaceImg.path,fit: BoxFit.contain,),
          SizedBox(height: 30.h,),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: InkWell(
                onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => OnboardTwo(),)),
                child: Container(
                  height: 50.h,
                  width: 130.w,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    border: Border.all(color: Colors.black,width: 2.w),

                  ),
                  child: Center(child: Text("Next",style: TextStyle(color: Colors.black,
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
