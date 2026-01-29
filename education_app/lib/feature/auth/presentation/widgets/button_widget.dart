
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key,required this.tapped, required this.title});
  final void Function()? tapped;
  final String title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:tapped ,
      child: Container(
        width: 345.w  ,
        height: 58.h,
        decoration: BoxDecoration(color: Color(0xffD2FF1F),borderRadius: BorderRadius.circular(25.r)),
        child: Center(
          child: Text(title,style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w600,
          color: Colors.black),),
        ),

      ),
    );
  }
}
