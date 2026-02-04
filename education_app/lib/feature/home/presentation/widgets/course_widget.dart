

import 'package:education_app/feature/home/data/course_data.dart';
import 'package:education_app/feature/home/domain/cls_course.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/global/cls_global.dart';
import '../../../../gen/assets.gen.dart';

class CourseWidget extends StatefulWidget {
   CourseWidget({super.key, required this.course, this.favTapped});
 Course course;
 final void Function()? favTapped;
  @override
  State<CourseWidget> createState() => _CourseWidgetState();
}

class _CourseWidgetState extends State<CourseWidget> {
  @override
  Widget build(BuildContext context) {
    void tapped(){
      setState(() {
        widget.course.favourite = !widget.course.favourite;
        listOfCourses[listOfCourses.indexOf(widget.course)].favourite=
            widget.course.favourite;
      });
    }
    return Container(
      width: 223.71.w,
      constraints: BoxConstraints(
        minWidth: 223.71.w,
        minHeight: 160.51.h,
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: Global.getRandomColor(),
          image: DecorationImage(
              image: AssetImage(widget.course.backImgPath??""),fit: BoxFit.contain,alignment: AlignmentGeometry.centerRight)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.course.title,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18.sp,color: Colors.black),),
                  Text(widget.course.subTitle,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18.sp,color: Colors.black),),
                ],
              ),
              InkWell(
                onTap: (){
                  tapped();
                    widget.favTapped!();
                },
                child: Container(
                  height: 28.r,
                  width: 28.r,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100.r),color: Colors.black),
                  child: widget.course.favourite?Assets.images.heartFilled.image():Assets.images.heart.image(),
                ),
              )
            ],
          ),
          Text.rich(
            TextSpan(
                text: widget.course.price.toString(),
                style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20.sp,color: Colors.black),
                children: [
                  TextSpan(
                      text: "\$",
                      style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22.sp,color: Colors.black)),
                ] ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 48.w,
                height: 18.h,
                decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(100.r)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star_border,size: 10.r,),
                    Text(widget.course.rating.toString(),style: TextStyle(color: Colors.white,fontSize: 10.sp),)
                  ],
                ),),
              Container(
                width: 66.w,
                height: 18.h,
                decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(100.r)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(widget.course.hours.toString(),style: TextStyle(color: Colors.white,fontSize: 10.sp),),
                    Text("Hours",style: TextStyle(color: Colors.white,fontSize: 10.sp),),
                  ],
                ),),
              Container(
                width: 70.w,
                height: 18.h,
                decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(100.r)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text((widget.course.subscribers!/1000.0).toInt().toString(),style: TextStyle(color: Colors.white,fontSize: 10.sp),),
                    Text("k People",style: TextStyle(color: Colors.white,fontSize: 10.sp),),
                  ],
                ),)
            ],
          )
        ],
      ),

    );
  }
}
