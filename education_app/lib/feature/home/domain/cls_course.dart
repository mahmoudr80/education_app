
import 'dart:ui';

import 'package:education_app/feature/home/data/course_data.dart';
import 'package:education_app/feature/home/domain/en_course.dart';

import '../../../gen/assets.gen.dart';

class Course{
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
  Course({required this.title,required  this.subTitle,this.favourite = false,this.price=400,this.subscribers=5000,
  this.hours=30,this.rating=4,this.enCourseCategory=EnCourseCategory.design, this.enCourse=EnCourse.course,this.backImgPath })
  {
    if(backImgPath!=null) {
      return;
    }
    switch(enCourseCategory){
      case EnCourseCategory.design:
        backImgPath=Assets.images.cusUiuxImg.path;
      case EnCourseCategory.marketing:
        backImgPath=Assets.images.markettingImg.path;
      case EnCourseCategory.programming:
        backImgPath=Assets.images.programmingImg.path;
    }
  }

  static List<Course> getCoursesAndLectures = CourseData.listOfCourses;
  static List<Course> getAllLectures = _getAllLectures();
  static List<Course> getAllCourses = _getAllCourses();
  static List<Course> getAllTops = _getAllTops();
  static List<Course> getFavCourses =_getFavCourses();
  static List<Course> getFavLectures =_getFavLectures();


 static List<Course>_getAllCourses(){
    List<Course> courses = [];
 for (int k = 0 ; k<getCoursesAndLectures.length; k++){
 if(getCoursesAndLectures[k].enCourse==EnCourse.course){
 courses.add(getCoursesAndLectures[k]);
 }
 }
 return courses;
}
 static List<Course>_getAllLectures(){
   List<Course> courses = [];
   for (int k = 0 ; k<getCoursesAndLectures.length; k++){
     if(getCoursesAndLectures[k].enCourse==EnCourse.lecture){
       courses.add(getCoursesAndLectures[k]);
     }
   }
   return courses;
 }
 static List<Course>_getAllTops(){
   List<Course> courses = [];
   for (int k = 0 ; k<getCoursesAndLectures.length; k++){
     if(getCoursesAndLectures[k].rating!>=4.8){
       courses.add(getCoursesAndLectures[k]);
     }
   }
   return courses;
 }

 static List<Course> _getFavCourses(){
   List <Course> list = [];
   for (int i = 0; i<getAllCourses.length;i++){
     if(getAllCourses[i].favourite==true){
       list.add(getAllCourses[i]);
     }
   }
   return list;
 }
 static List<Course> _getFavLectures(){
   List <Course> list = [];
   for (int i = 0; i<getAllLectures.length;i++){
     if(getAllLectures[i].favourite==true){
       list.add(getAllLectures[i]);
     }
   }
   return list;
 }
}