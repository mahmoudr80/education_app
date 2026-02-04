
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      style: TextStyle(color: Colors.black),
      autovalidateMode:AutovalidateMode.onUnfocus,
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      decoration: InputDecoration(prefixIcon: Icon(Icons.search_outlined,size: 25.r,),
        suffixIcon: Icon(Icons.menu_outlined,size: 25.r,),
        constraints: BoxConstraints(minHeight: 51.h,minWidth: 345.w),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(100.r)
            ,borderSide: BorderSide(color: Color(0xff6C6C6C))),
        hintStyle: TextStyle(color: Color(0xffBFBFBF),fontWeight: FontWeight.w900,fontSize: 14.sp),

      ),
    );
  }
}
