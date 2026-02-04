import 'package:education_app/core/constants/Constants.dart';
import 'package:education_app/core/global/cls_global.dart';
import 'package:education_app/core/widgets/custom_goto_container.dart';
import 'package:education_app/feature/auth/presentation/screens/welcome_screen.dart';
import 'package:education_app/feature/home/presentation/screens/notification_screen.dart';
import 'package:education_app/feature/profile/presentation/screens/edit_screen.dart';
import 'package:education_app/feature/profile/presentation/widgets/profile_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum EnProfileScreens {main,notification,edit}

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  EnProfileScreens currentScreen = EnProfileScreens.main;

  void notificationTapped(){
    setState(() {
      currentScreen = EnProfileScreens.notification;
    });
  }
  void editTapped(){
    setState(() {
      currentScreen = EnProfileScreens.edit;
    });
  }
  void backTapped(){
    setState(() {
      currentScreen = EnProfileScreens.main;
    });
  }
  @override
  Widget build(BuildContext context) {
    return currentScreen==EnProfileScreens.main? Column(
      spacing: 9.h,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("My Profile",style: TextStyle(fontSize: 28.sp,fontWeight: FontWeight.bold),),
            SizedBox(width: 80.w,),
            IconButton(
                onPressed: notificationTapped,
                icon: Icon(Icons.notifications_active_outlined,color: Colors.greenAccent,size: 35.r,))
          ],
        ),
        SizedBox(height: 10.h,),
        ProfileImageWidget(),
        Text(Global.userBox.get(Constants.currentUserKey)!.fullName??"Anonymous",
        style: TextStyle(color: Color(0xffDCC1FF),fontWeight: FontWeight.w600,fontSize: 30.sp),),
        SizedBox(height: 15.h,),
        CustomGotoContainer(title: "Edit Profile",tapped: editTapped,),
        CustomGotoContainer(title: "Payment"),
        CustomGotoContainer(title: "Support"),
        CustomGotoContainer(title: "About the app"),

        TextButton(onPressed: (){
          Global.userBox.clear();
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) {
            return WelcomeScreen();
          },), (route) => false,);
        },
            child:Text("Log out",style: TextStyle(color: Color(0xff6C6C6C),
                fontSize: 20.sp,fontWeight: FontWeight.w600,
            decoration: TextDecoration.underline,
              decorationColor: Color(0xff6C6C6C),
              decorationThickness: 1
            ),))
      ],
    ):
    currentScreen==EnProfileScreens.notification?NotificationScreen(tapped: backTapped):
        EditScreen(backTapped: backTapped,)
    ;
  }
}
