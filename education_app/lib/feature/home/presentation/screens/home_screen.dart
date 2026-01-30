
import 'package:education_app/core/utils/en_nav_bar.dart';
import 'package:education_app/feature/home/domain/en_course.dart';
import 'package:education_app/feature/home/presentation/widgets/course_widget.dart';
import 'package:education_app/feature/home/presentation/widgets/filter_widget.dart';
import 'package:education_app/feature/job/presentation/screens/job_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/global/cls_global.dart';
import '../../../../core/global/current_screen.dart';
import '../../../../core/widgets/custom_nav_bar.dart';
import '../../../../gen/assets.gen.dart';
import '../../../calender/presentation/calender_screen.dart';
import '../../../profile/presentation/profile_screen.dart';
import '../../../search/presentation/search_screen.dart';
import '../../domain/cls_course.dart';
import 'notification_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.profileTapped,});
final void Function()profileTapped;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool firstScreen = true;
 @override
  Widget build(BuildContext context) {

   void tapped(){
     setState(() {
       firstScreen = !firstScreen;
     });
   }
   enCurrentScreen = EnNavBar.home;
    return Padding(
      padding: const EdgeInsets.only(left: 24,top: 15),
      child:firstScreen? Column(
        spacing: 10.h,
       crossAxisAlignment: CrossAxisAlignment.start,
         children: [
        Row(
         children: [
      InkWell(onTap:widget.profileTapped ,
        child: CircleAvatar(
            radius: 25.r,
            backgroundImage: AssetImage(Assets.images.profileHome.path)),
      ),
      SizedBox(width: 15.w,),
      Expanded(child: Text("Hello, Jane",style: TextStyle(color: Color(0xffAB93E0),fontSize: 16.sp,fontWeight: FontWeight.w600),)),
      IconButton(
          onPressed:tapped,
          icon: Image.asset(Assets.images.notification.path,height: 30.r,width: 30.r,fit: BoxFit.contain , ))
         ],
        ),
      FilterWidget(),
      Text("Courses",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20.sp,color: Colors.white),),
      SizedBox(
       height:158.h ,
        child: ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index)=>CourseWidget(course: Course.getAllCourses[index]),
            separatorBuilder:(context, index) =>  SizedBox(width: 10.w,),
            itemCount: Course.getAllCourses.length),
      ),
      Text("Lectures",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20.sp,color: Colors.white),),
           SizedBox(
       height:158.h ,
       child: ListView.separated(
           shrinkWrap: true,
           padding: EdgeInsets.zero,
           scrollDirection: Axis.horizontal,
           itemBuilder: (context, index)=>CourseWidget(course: Course.getAllLectures[index]),
           separatorBuilder:(context, index) =>  SizedBox(width: 10.w,),
           itemCount: Course.getAllLectures.length),
      ),
      Text("On Top",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20.sp,color: Colors.white),),
      SizedBox(
       height:158.h ,
       child: ListView.separated(
           shrinkWrap: true,
           padding: EdgeInsets.zero,
           scrollDirection: Axis.horizontal,
           itemBuilder: (context, index)=>CourseWidget(course: Course.getAllTops[index]),
           separatorBuilder:(context, index) =>  SizedBox(width: 10.w,),
           itemCount: Course.getAllTops.length),
      ),
         ],
      ):Padding(
        padding: const EdgeInsets.only(right: 24),
        child: NotificationScreen(tapped: tapped,),
      ),
    );
     //CourseWidget(course: course);
  }
}
