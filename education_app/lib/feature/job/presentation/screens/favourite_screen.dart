import 'package:education_app/feature/home/data/course_data.dart';
import 'package:education_app/feature/home/domain/en_course.dart';
import 'package:education_app/feature/home/presentation/widgets/course_widget.dart';
import 'package:education_app/feature/job/data/job_data.dart';
import 'package:education_app/feature/job/presentation/widget/job_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../home/domain/cls_course.dart';
import '../../domain/clsJob.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key, required this.backTapped});
final void Function() backTapped;
  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  void favTapped(){
    setState(() {

    });
  }
  List<Job> getFavJobs(){
  return listOfAllJobs.where((element) => element.favourite==true,).toList();
  }
  List<Course> getFavCourses(){
    return listOfCourses.where((element) => element.favourite==true&&element.enCourse==EnCourse.course,).toList();
  }
  List<Course> getFavLectures(){
    return listOfCourses.where((element) => element.favourite==true&&element.enCourse==EnCourse.lecture,).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: 88.w,
          children: [
            IconButton(
              onPressed: widget.backTapped,
              icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
            ),
            Text("Favourites",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24.sp),)
          ],
        ),
        Text("Jobs",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24.sp),),
        SizedBox(
          height: 158.h ,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
            return JobCard(job: getFavJobs()[index],favTapped: favTapped);
          }, separatorBuilder: (context, index) => SizedBox(width: 10.w), itemCount:getFavJobs().length),
        ),

        SizedBox(height: 5.h,),
        Text("Courses",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24.sp),),
        SizedBox(
          height: 158.h ,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CourseWidget(course: getFavCourses()[index],favTapped: favTapped,);
              }, separatorBuilder: (context, index) => SizedBox(width: 10.w),
              itemCount:getFavCourses().length),
        ),
        SizedBox(height: 5.h,),
        Text("Lectures",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24.sp),),
        SizedBox(
          height: 158.h ,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CourseWidget(course: getFavLectures()[index],favTapped: favTapped);
              }, separatorBuilder: (context, index) => SizedBox(width: 10.w),
              itemCount:getFavLectures().length),
        ),
      ],
    );
  }
}
