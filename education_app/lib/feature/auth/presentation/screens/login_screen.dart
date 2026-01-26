

import 'package:education_app/core/widgets/custom_text_feild.dart';
import 'package:education_app/feature/auth/presentation/screens/sign_up_screen.dart';
import 'package:education_app/feature/auth/presentation/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/validators.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
 final TextEditingController emailController =TextEditingController();
  final TextEditingController passController =TextEditingController();
  final GlobalKey customKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 25.w),
          child: Form(
            key: customKey,
            child: Column(
              spacing: 35.h,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Log in your",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 36.sp),),
                SizedBox(height: 26.h,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Email",style: TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w600),),
                    CustomTextFeild(hint_text: "careerplace@gmail.com",validator: Validators.emailValidator,controller: emailController,),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Password",style: TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w600),),
                    CustomTextFeild(hint_text: "############",validator: Validators.passValidator,controller: passController,secure: true,),
                  ],
                ),
                ButtonWidget(tapped: (){}, title:"Log in")
              ],

            ),
          ),
        ),
      ),
    );
  }
}
