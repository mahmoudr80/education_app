
import 'package:education_app/feature/calender/presentation/widgets/calender_widget.dart';
import 'package:education_app/feature/calender/presentation/widgets/horizontal_calender.dart';
import 'package:education_app/feature/home/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/global/current_screen.dart';
import '../../../core/utils/en_nav_bar.dart';
import '../../../core/widgets/custom_nav_bar.dart';
import '../../job/presentation/screens/job_screen.dart';
import '../../profile/presentation/profile_screen.dart';
import '../../search/presentation/search_screen.dart';

class  CalenderScreen extends StatelessWidget {
  const CalenderScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> listCalenderWidget = [
      CalenderWidget(taskCount: 2,title: "Interface Design",start: TimeOfDay(hour: 9, minute: 0),end: TimeOfDay(hour: 12, minute: 30),)
      , CalenderWidget(taskCount: 3,title: "Portfolio Design",start: TimeOfDay(hour: 14, minute: 0),end: TimeOfDay(hour: 15, minute:  0),),
      CalenderWidget(taskCount: 4,title: "Figures in Figma",start: TimeOfDay(hour: 15, minute: 30),end: TimeOfDay(hour: 17, minute:  30),),
      CalenderWidget(taskCount: 2,title: "Semi-Project in C++",start: TimeOfDay(hour: 18, minute: 0),end: TimeOfDay(hour: 19, minute: 30),)
      , CalenderWidget(taskCount: 5,title: "Advertising",start: TimeOfDay(hour: 20, minute: 0),end: TimeOfDay(hour: 22, minute:  0),),
      CalenderWidget(taskCount: 7,title: "Business Analysis",start: TimeOfDay(hour: 22, minute: 30),end: TimeOfDay(hour: 23, minute:  30),),
    ];
    enCurrentScreen = EnNavBar.calender;
    return Padding(
      padding: const EdgeInsets.only(left: 24,right: 24,top: 15,bottom: 6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Calender",style: TextStyle(fontSize: 24.sp,fontWeight: FontWeight.w600),),
            HorizontalCalendar(),
            SizedBox(height: 20.h,),
            Row(
              children: [
                Expanded(child: Text("Items and tasks",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w600),)),
                Text("All",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400),),
                SizedBox(width: 15.w,),
                Text("Unread",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400),),
              ],
            ),
            SizedBox(height: 20.h,),
            SizedBox(
              height: 580.h,
              child: ListView.separated(itemBuilder: (context, index) => listCalenderWidget[index],
                  separatorBuilder:(context, index) => SizedBox(height: 10.h,),
                  itemCount:listCalenderWidget.length),
            )
          ],
        ),
    );
  }
}
