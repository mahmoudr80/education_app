

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/global/cls_global.dart';
import '../../../home/domain/cls_course.dart';
import '../../../home/presentation/widgets/course_widget.dart';
import '../../domain/clsJob.dart';
import '../widget/job_card.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key,required this.tapped});
  final void Function()? tapped;

  @override
  Widget build(BuildContext context) {
    List<Course> courses = Global.favCourse;
    return Column(
      spacing: 15.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: 88.w,
          children: [
            InkWell(
              onTap: tapped,
              child: Container(
                height: 24.r,
                width: 24.r,
                decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(100.r)),
                child: Icon(Icons.arrow_back_ios,color: Colors.white,),
              ),
            ),
            Text("Favourite",style: TextStyle(color: Colors.white,fontSize: 24.sp,fontWeight: FontWeight.w600),)
          ],
        ),
        Text("Jobs",style: TextStyle(color: Colors.white,fontSize: 24.sp,fontWeight: FontWeight.w600),),
        SizedBox(
          height: 158.h,
          width: double.maxFinite.w,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => JobCard(job: Job.listOfFavJobs[index]),
              separatorBuilder: (context, index) => SizedBox(width: 10.w,),
              itemCount: Job.listOfFavJobs.length),
        ),
        SizedBox(height: 4.h,),
        Text("Courses",style: TextStyle(color: Colors.white,fontSize: 24.sp,fontWeight: FontWeight.w600),),
        SizedBox(
          height:158.h ,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index)=>CourseWidget(course:courses[index]),
              separatorBuilder:(context, index) =>  SizedBox(width: 10.w,),
              itemCount: courses.length),
        ),
        SizedBox(height: 4.h,),
        Text("Lectures",style: TextStyle(color: Colors.white,fontSize: 24.sp,fontWeight: FontWeight.w600),),
        SizedBox(
          height:158.h ,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index)=>CourseWidget(course: Course.getFavLectures[index]),
              separatorBuilder:(context, index) =>  SizedBox(width: 10.w,),
              itemCount: Course.getFavLectures.length),
        ),
      ],
    );
  }
}
