import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterContainer extends StatelessWidget {
  const FilterContainer({super.key, required this.data, this.tapped, this.homeSelected=false,
     this.searchSelected=false,});
final String data;
final void Function()? tapped;
final bool homeSelected ;
final bool searchSelected ;
  @override
  Widget build(BuildContext context) {
    return    InkWell(
      onTap: tapped,
      child: Container(padding: EdgeInsets.symmetric(horizontal: 9.w),
        height: 33.h,
        //width: 86.w,
        constraints: BoxConstraints(minWidth: 82.w),
        decoration: BoxDecoration(
            color: searchSelected?Color(0xffD2FF1F):null,
            borderRadius: BorderRadius.circular(25.r),
          border: Border.all(color: Color(0xff6C6C6C),width:searchSelected? 0:2.r)),
        child: Center(child: Text(data,style: TextStyle(color:homeSelected? Color(0xff414141):searchSelected?Colors.black:Color(0xff6C6C6C),fontSize: 14.sp,
            fontWeight: FontWeight.w500),)),),
    );


  }
}
