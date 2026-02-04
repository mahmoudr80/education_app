
import 'dart:ui';

import 'package:education_app/feature/home/data/course_data.dart';
import 'package:education_app/feature/home/domain/en_course.dart';

import '../../../gen/assets.gen.dart';

class Course {
  final String title;
  final String subTitle;
  bool favourite;
  int ?price;
  double ?rating;
  int ?hours;
  int ?subscribers;
  String ?backImgPath;
  final EnCourseCategory enCourseCategory;
  final EnCourse enCourse;

  Course(
      {required this.title, required this.subTitle, this.favourite = false, this.price = 400, this.subscribers = 5000,
        this.hours = 30, this.rating = 4, this.enCourseCategory = EnCourseCategory
          .design, this.enCourse = EnCourse.course, this.backImgPath }) {
    if (backImgPath != null) {
      return;
    }
    switch (enCourseCategory) {
      case EnCourseCategory.design:
        backImgPath = Assets.images.cusUiuxImg.path;
      case EnCourseCategory.marketing:
        backImgPath = Assets.images.markettingImg.path;
      case EnCourseCategory.programming:
        backImgPath = Assets.images.programmingImg.path;
    }
  }
}

List<Course>getAllCourses(){
  return listOfCourses.where((element) =>element.enCourse==EnCourse.course).toList();
}
List<Course>getAllLectures(){
  return listOfCourses.where((element) =>element.enCourse==EnCourse.lecture).toList();
}
List<Course>getAllTops(){
  return listOfCourses.where((element) =>element.rating!>=4.8).toList();
}