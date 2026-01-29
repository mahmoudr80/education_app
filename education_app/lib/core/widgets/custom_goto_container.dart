import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomGotoContainer extends StatelessWidget {
  const CustomGotoContainer({super.key, required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title, style: TextStyle(
          fontSize: 20.sp,
          fontWeight: FontWeight.w600,
          color: Colors.white)),
      trailing:  Icon(Icons.arrow_forward_ios, size: 16.r,color: Colors.white,),
      onTap: () {},

    );
    ;
  }
}
