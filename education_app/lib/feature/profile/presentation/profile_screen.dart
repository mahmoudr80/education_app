
import 'package:education_app/core/widgets/custom_goto_container.dart';
import 'package:education_app/feature/home/presentation/screens/notification_screen.dart';
import 'package:education_app/feature/search/presentation/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/global/current_screen.dart';
import '../../../core/utils/en_nav_bar.dart';
import '../../../core/widgets/custom_nav_bar.dart';
import '../../../gen/assets.gen.dart';
import '../../calender/presentation/calender_screen.dart';
import '../../home/presentation/screens/home_screen.dart';
import '../../job/presentation/screens/job_screen.dart';

class  ProfileScreen extends StatefulWidget {
  const ProfileScreen ({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool firstScreen = true;

  @override
  Widget build(BuildContext context) {
    enCurrentScreen = EnNavBar.profile;
    void tapped(){
      setState(() {
        firstScreen = !firstScreen;
      });
    }
    return firstScreen? Column(
      spacing: 9.h,
      children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "My profile",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 80.w,),
        IconButton(
          icon: const Icon(
            Icons.notifications_active_outlined,
            color: Colors.greenAccent,
            size: 35,
          ),
          onPressed: tapped,
        ),
      ],
    ),
        SizedBox(height: 6.h,),
        Container(
          padding: EdgeInsets.all(2.r),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Color(0xffD2FF1F), width: 3.w),
          ),
          child:
          CircleAvatar(
            radius: 75.r,
            backgroundColor: Colors.white,
            child: Image.asset(Assets.images.profileHome.path,fit: BoxFit.contain,),
          ),
        ),
        Text(
          "Jane Sodi",
          style: TextStyle(
            color: Color(0xffDCC1FF),
            fontSize: 30.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 15.h),
        CustomGotoContainer(title: "Edit profile"),
        CustomGotoContainer(title: "Payment"),
        CustomGotoContainer(title: "Support"),
        CustomGotoContainer(title: "About the app"),

        TextButton(onPressed: (){}, child: Text(
          "Log out",
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
            color: Color(0xff6C6C6C),
            decoration: TextDecoration.underline,
            decorationColor: Color(0xff6C6C6C),
            decorationThickness: 1,


          ),
        )),


      ],
    ):NotificationScreen(tapped: tapped);
  }
}
