import 'dart:io';

import 'package:education_app/feature/home/domain/cls_course.dart';
import 'package:education_app/feature/home/presentation/screens/notification_screen.dart';
import 'package:education_app/feature/home/presentation/widgets/course_widget.dart';
import 'package:education_app/feature/home/presentation/widgets/filter_widget.dart';
import 'package:education_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/Constants.dart';
import '../../../../core/global/cls_global.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.profileTapped});
final void Function()profileTapped;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
bool firstScreen = true;

  @override
  Widget build(BuildContext context) {
    final user = Global.userBox.get(Constants.currentUserKey);
    return Padding(padding: EdgeInsetsGeometry.only(left:24,top: 15 ),
      child:firstScreen? Column(
        spacing: 10.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              InkWell(
                onTap: widget.profileTapped,
                child: CircleAvatar(
                  radius: 25.r,
                  backgroundImage: user!.filePath!=null && user!.filePath!=""?
                  Image.file(File(user.filePath??"")).image:
                  Image.asset(Assets.images.profileImg.path).image,

                ),
              ),
              SizedBox(width: 15.w,),
              Expanded(
                child: Text("Hello, ${user.fullName??"Anonymous"}",style: TextStyle(
                  color: Color(0xffAB93E0),fontSize: 16.sp,fontWeight: FontWeight.w600
                ),),
              ),
              IconButton(onPressed: tapped, icon: Image.asset(
                Assets.images.notification.path,
                height: 30.r,
                width: 30.r,
                fit: BoxFit.contain,
              )),

            ],
          ),
          FilterWidget(),
          Text("Courses",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20.sp,color: Colors.white),),
          SizedBox(
            height: 158.h,
            child:ListView.separated(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
               return CourseWidget(course: getAllCourses()[index],favTapped: (){});
            },
    separatorBuilder: (context, index) => SizedBox(width: 10.w,)
                , itemCount: getAllCourses().length)
            ,
          ),
          Text("Lectures",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20.sp,color: Colors.white),),
          SizedBox(
            height: 158.h,
            child:ListView.separated(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CourseWidget(course: getAllLectures()[index],favTapped: (){},);
                },
                separatorBuilder: (context, index) => SizedBox(width: 10.w,)
                , itemCount: getAllLectures().length)
            ,
          ),
          Text("On Top",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20.sp,color: Colors.white),),
          SizedBox(
            height: 158.h,
            child:ListView.separated(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CourseWidget(course: getAllTops()[index],favTapped: (){});
                },
                separatorBuilder: (context, index) => SizedBox(width: 10.w,)
                , itemCount: getAllTops().length)
            ,
          )
        ],
      )
      :NotificationScreen(tapped: tapped),);
  }

  void tapped() {
    setState(() {
      firstScreen = !firstScreen;
    });
  }
}
