import 'package:education_app/feature/calender/presentation/widgets/calender_widget.dart';
import 'package:education_app/feature/calender/presentation/widgets/horizontal_calender.dart';
import 'package:education_app/feature/calender/presentation/widgets/learning_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../gen/assets.gen.dart';

class CalenderScreen extends StatefulWidget {
  const CalenderScreen({super.key});

  @override
  State<CalenderScreen> createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
  bool firstScreen = true;
  int index = 0;
  late YoutubePlayerController _controller;

  void backTapped() {
setState(() {
  firstScreen=true;
});
  }
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(left: 24.w,right: 24.w,top: 15.h,bottom: 6.h),
    child:firstScreen? Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text("Calender",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24.sp),),
        HorizontalCalendar(),
        SizedBox(height: 20.h,),
        Row(
          children: [
            Expanded(child: Text("Item & Tasks",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18.sp),)),
            Text("All",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14.sp),),
            SizedBox(width: 14.w,),
            Text("Unread",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14.sp),),

          ],
        ),
        SizedBox(height: 20.h,),
       Expanded(
         child: ListView.separated(itemBuilder:
             (context, index) {
               return listCalenderWidget[index];
             }, separatorBuilder:(context, index) => SizedBox(height: 10.h,), itemCount:
         listCalenderWidget.length),
       )
      ],
    ):
      LearningWidget(tapped: backTapped, title:listTitles[index], imagePath:imagePaths[index],
          videoId:listVideoIds[index]),);
  }

  List<String> listTitles = [
    "Interface Design",
    "Portfolio Design",
    "Figures in Figma",
    "Semi-Project in C++",
    "Advertising",
    "Business Analysis",
  ];
  List<String> listVideoIds = [
    "ziQEqGZB8GE",
    "0VGc7jrD9zo",
    "d78yo84tnfA",
    "0vNUiCnuO6w",
    "icwWpAHReWg",
    "STVRW9UzS48",
  ];
late List<Widget> listCalenderWidget = [
  CalenderWidget(
    taskCount: 2,
    title: listTitles[0],
    start: TimeOfDay(hour: 9, minute: 0),
    end: TimeOfDay(hour: 12, minute: 30),
    tapped: () {
      setState(() {
        index = 0;
        firstScreen = false;
      });
    },
  ),
  CalenderWidget(
    taskCount: 3,
    title: listTitles[1],
    start: TimeOfDay(hour: 14, minute: 0),
    end: TimeOfDay(hour: 15, minute: 0),
    tapped: () {
      setState(() {
        index = 1;
        firstScreen = false;
      });
    },
  ),
  CalenderWidget(
    taskCount: 4,
    title: listTitles[2],
    start: TimeOfDay(hour: 15, minute: 30),
    end: TimeOfDay(hour: 17, minute: 30),
    tapped: () {
      setState(() {
        index = 2;
        firstScreen = false;
      });
    },
  ),
  CalenderWidget(
    taskCount: 2,
    title: listTitles[3],
    start: TimeOfDay(hour: 18, minute: 0),
    end: TimeOfDay(hour: 19, minute: 30),
    tapped: () {
      setState(() {
        index = 3;
        firstScreen = false;
      });
    },
  ),
  CalenderWidget(
    taskCount: 5,
    title: listTitles[4],
    start: TimeOfDay(hour: 20, minute: 0),
    end: TimeOfDay(hour: 22, minute: 0),
    tapped: () {
      setState(() {
        index = 4;
        firstScreen = false;
      });
    },
  ),
  CalenderWidget(
    taskCount: 7,
    title: listTitles[5],
    start: TimeOfDay(hour: 22, minute: 30),
    end: TimeOfDay(hour: 23, minute: 30),
    tapped: () {
      setState(() {
        index = 5;
        firstScreen = false;
      });
    },
  ),
];

  List<String> imagePaths = [
    Assets.images.videoImg.path,
    Assets.images.video2Img.path,
    Assets.images.video3Img.path,
    Assets.images.video4Img.path,
    Assets.images.video5Img.path,
    Assets.images.video6Img.path,
  ];

}
