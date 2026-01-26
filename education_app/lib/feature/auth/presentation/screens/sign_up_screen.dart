

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/validators.dart';
import '../../../../core/widgets/custom_text_feild.dart';
import '../widgets/button_widget.dart';

class SignUpScreen extends StatelessWidget {
   SignUpScreen({super.key});
  final TextEditingController emailController =TextEditingController();
  final TextEditingController passController =TextEditingController();
  final TextEditingController fullNameController =TextEditingController();
  final TextEditingController usernameController =TextEditingController();
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
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 35.h,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Create",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 36.sp),),
                    Text("Account",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 36.sp),),
                  ],
                ),
                SizedBox(height: 57.h,),
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
                    Text("Username",style: TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w600),),
                    CustomTextFeild(hint_text: "desing ninja",validator: null,controller: usernameController,),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Full name",style: TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w600),),
                    CustomTextFeild(hint_text: "Jane Sodi",validator: null,controller: fullNameController,),
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
