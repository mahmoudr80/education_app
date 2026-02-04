import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/global/cls_global.dart';
import '../../../../gen/assets.gen.dart';
import '../../domain/clsJob.dart';


class JobCard extends StatefulWidget {
  final void Function()? favTapped;
  const JobCard({super.key,required this.job, this.favTapped});
  final Job job;

  @override
  State<JobCard> createState() => _JobCardState();
}

class _JobCardState extends State<JobCard> {
  @override
  Widget build(BuildContext context) {
    void tapped(){
setState(() {
  widget.job.favourite=!widget.job.favourite;
    widget.favTapped!();

});
    }
    Color color1 =  Global.getRandomColor();
    Color color2 =  Global.getRandomColor();
    return Container(
       height: 182.h,
       width:355.w,
      padding: EdgeInsets.symmetric(horizontal: 18.w,vertical: 20.h),
      decoration: BoxDecoration(
        color: Global.getRandomColor(),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
        CircleAvatar(
        radius: 18.r,
        backgroundColor: Colors.white,
          child: Image.asset(widget.job.iconPath??""),
      ),
      SizedBox(width: 5.w,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(maxLines: 2,
            widget.job.title,
            style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),
          ),
          Text(widget.job.company,style: TextStyle(color:Color(0xff434343),fontSize: 14.sp),),
        ],
      ),
      Expanded(child: Text("")),
      Text(widget.job.location,style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w400,color: Colors.black),)
            ],
          ),
      Text(widget.job.description,style: TextStyle(fontWeight: FontWeight.w500,color: Color(0xff3C3C3C)),maxLines: 2,),
      Row(
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.black26,spreadRadius: 2,
                offset: Offset(0,4),blurRadius: 10)],
              borderRadius: BorderRadius.circular(100.r),
              gradient: LinearGradient(colors: [color1,Colors.black38])
            ),
            width: 79.w,
            height: 28.h,
            child: Center(child: Text(widget.job.period,
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18.sp),)),

          ),
          SizedBox(width: 7.w,),
          Container(
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.black26,spreadRadius: 2,
                  offset: Offset(0,4),blurRadius: 10)],
              borderRadius: BorderRadius.circular(100.r),
                gradient: LinearGradient(colors: [color2,Colors.black26])
            ),
            width: 69.w,
            height: 28.h,
            child: Center(child: Text(widget.job.experience,
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18.sp),)),

          ),
          Expanded(child: Text("")),
          InkWell(
            onTap: tapped,
            child: Container(
              width: 28.r,
              height: 28.r,
              decoration: BoxDecoration(color:Colors.black, borderRadius: BorderRadius.circular(100.r)),
              child:  Icon(Icons.favorite,color: widget.job.favourite? Colors.red: Colors.white,),
            ),
          ),
          SizedBox(width: 7.w,),
          Container(
            width: 28.r,
            height: 28.r,
            decoration: BoxDecoration(color:Colors.black, borderRadius: BorderRadius.circular(100.r)),
            child: Icon(Icons.south_east_outlined,color: Colors.white,),
          ),
        ],
      )


        ],
      ),
    );
  }
}
