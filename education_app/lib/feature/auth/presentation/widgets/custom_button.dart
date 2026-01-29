import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title, required this.backgroundColor,required this.tapped});
  final String title;
  final Color  backgroundColor;
  final void Function()? tapped;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width:255.w,
      height: 50.h,
      child: ElevatedButton(
        onPressed:tapped,
        style: ElevatedButton.styleFrom(
          backgroundColor:  backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child:Text(
          title,
          style: TextStyle(
            fontSize: 16.sp,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
