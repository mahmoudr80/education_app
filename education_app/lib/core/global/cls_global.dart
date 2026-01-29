import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';

import '../../feature/home/domain/cls_course.dart';
import '../../feature/job/domain/clsJob.dart';
import '../../gen/assets.gen.dart';

class Global{
 static List<Color>listColors=[Color(0xffD2FF1F),Color(0xffFF825C),Color(0xffDCC1FF),Color(0xffFFE078),Color(0xffDFFC6B),Color(0xffFEF19D)];
 static List<String>listShapes=[Assets.images.interfaceForcolor.path,Assets.images.interfaceBackcolor.path,
   Assets.images.protofolioBackcolor.path,Assets.images.protofolioForcolor.path,
   Assets.images.figureBackcolor.path,Assets.images.figureForcolor.path];

 static Color getRandomColor(){
    int number = Random().nextInt(6); // 0 to 5
    return listColors[number];
  }
 static String getRandomShapePath(){
   int number = Random().nextInt(6); // 0 to 5
   return listShapes[number];
 }

 static List<Course> favCourse=Course.getFavCourses;
 static List<Course> favLec=Course.getFavLectures;
 static List<Job> favJobs=Job.listOfFavJobs;
}