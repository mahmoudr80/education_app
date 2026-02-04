

import 'package:education_app/core/widgets/custom_text_feild.dart';
import 'package:education_app/feature/auth/domain/user_class.dart';
import 'package:education_app/feature/auth/presentation/screens/sign_up_screen.dart';
import 'package:education_app/feature/auth/presentation/widgets/button_widget.dart';
import 'package:education_app/feature/main/presentation/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/Constants.dart';
import '../../../../core/global/cls_global.dart';
import '../../../../core/utils/validators.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
 final TextEditingController emailController =TextEditingController();
  final TextEditingController passController =TextEditingController();
  final GlobalKey customKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Color(0xff1A1A1A),leading:IconButton(onPressed: (){
          Navigator.pop(context);
        },
          icon:Icon(Icons.arrow_back_ios ,color: Colors.white,),),),
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
                    CustomTextFeild(hint_text: "careerplace@gmail.com",validator: Validators.emailValidator,
                      controller: emailController,),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Password",style: TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w600),),
                    CustomTextFeild(hint_text: "############",validator: Validators.passValidator,
                      controller: passController,secure: true,),
                  ],
                ),
                ButtonWidget(tapped: (){
                  if(Validators.emailValidator(emailController.text)!=null
                      ||Validators.passValidator(passController.text)!=null)
                    {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
                        Text("Invalid credentials",style: TextStyle(color: Colors.white),),backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(25.r)),
                      ));
                      return;
                    }
                  else{
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Login Successfully"),backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(25.r)),duration: Duration(seconds: 1),)
                    );
                    Future.delayed(Duration(milliseconds: 200)).then((value) {
                      Global.userBox.put(Constants.currentUserKey,User(password: passController.text,
                          email: emailController.text));
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (_) => MainScreen()),
                            (route) => false,
                      );
                    },);
                  }

                }, title:"Log in")
              ],

            ),
          ),
        ),
      ),
    );
  }
}
