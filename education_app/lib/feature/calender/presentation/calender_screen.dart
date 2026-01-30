
import 'package:education_app/feature/calender/presentation/widgets/calender_widget.dart';
import 'package:education_app/feature/calender/presentation/widgets/horizontal_calender.dart';
import 'package:education_app/feature/calender/presentation/widgets/learning_widget.dart';
import 'package:education_app/feature/home/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/global/current_screen.dart';
import '../../../core/utils/en_nav_bar.dart';
import '../../../core/widgets/custom_nav_bar.dart';
import '../../../gen/assets.gen.dart';
import '../../job/presentation/screens/job_screen.dart';
import '../../profile/presentation/profile_screen.dart';
import '../../search/presentation/search_screen.dart';

class  CalenderScreen extends StatefulWidget {
  const CalenderScreen ({super.key});

  @override
  State<CalenderScreen> createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
bool firstScreen = true;
int index = 0;
  @override
  Widget build(BuildContext context) {
    List<String> listTitles = ["Interface Design", "Portfolio Design","Figures in Figma","Semi-Project in C++"
      ,"Advertising", "Business Analysis"];
    List<String> imagePaths = [Assets.images.videoImg.path,
      Assets.images.video2Img.path,Assets.images.video3Img.path
      ,Assets.images.video4Img.path,Assets.images.video5Img.path,
      Assets.images.video6Img.path,];
    List<Widget> listCalenderWidget = [
      CalenderWidget(taskCount: 2,title:  listTitles[0],start: TimeOfDay(hour: 9, minute: 0),end: TimeOfDay(hour: 12, minute: 30),tapped: (){
        setState(() {
          index = 0;
          firstScreen = false;
        });
      })
      , CalenderWidget(taskCount: 3,title:listTitles[1],start: TimeOfDay(hour: 14, minute: 0),end: TimeOfDay(hour: 15, minute:  0),tapped: (){
        setState(() {
          index = 1;
          firstScreen = false;
        });
      }),
      CalenderWidget(taskCount: 4,title:  listTitles[2],start: TimeOfDay(hour: 15, minute: 30),end: TimeOfDay(hour: 17, minute:  30),tapped: (){
        setState(() {
          index = 2;
          firstScreen = false;
        });
      }),
      CalenderWidget(taskCount: 2,title:  listTitles[3],start: TimeOfDay(hour: 18, minute: 0),end: TimeOfDay(hour: 19, minute: 30),tapped: (){
        setState(() {
          index = 3;
          firstScreen = false;
        });
      })
      , CalenderWidget(taskCount: 5,title:listTitles[4],start: TimeOfDay(hour: 20, minute: 0),end: TimeOfDay(hour: 22, minute:  0),tapped: (){
    setState(() {
    index = 4;
    firstScreen = false;
    });
    }),
      CalenderWidget(taskCount: 7,title:  listTitles[5],start: TimeOfDay(hour: 22, minute: 30),end: TimeOfDay(hour: 23, minute:  30),tapped: (){
        setState(() {
          index = 5;
          firstScreen = false;
        });
      },),
    ];

    enCurrentScreen = EnNavBar.calender;
    return Padding(
      padding: const EdgeInsets.only(left: 24,right: 24,top: 15,bottom: 6),
      child:firstScreen? Column(
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
        ):LearningWidget(tapped: backTapped,title: listTitles[index],imagePath: imagePaths[index],),
    );
  }

  void backTapped() {
    setState(() {
      firstScreen = true;
    });
  }


}
