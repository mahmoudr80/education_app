

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFeild extends StatefulWidget {
  const CustomTextFeild({super.key, required this.hint_text,
     this.secure=false,required this.validator, required this.controller});
final String hint_text;
final bool secure;
final String? Function(String?)? validator;
final TextEditingController controller;

  @override
  State<CustomTextFeild> createState() => _CustomTextFeildState();
}

class _CustomTextFeildState extends State<CustomTextFeild> {

  bool _isValidity = false;
void  _checkValidity (String value)
{
  setState(() {
    _isValidity = true;
  });
}

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      controller: widget.controller,
      style: TextStyle(color: Colors.black),
      onChanged: _checkValidity,
      autovalidateMode:AutovalidateMode.onUnfocus,
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      validator:widget.validator ,
      obscureText: widget.secure,
      decoration: InputDecoration(
        constraints: BoxConstraints(minHeight: 51.h,minWidth: 345.w),
        hintText:widget.hint_text,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(100.r)
        ,borderSide: BorderSide.none),
        enabledBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(100.r)
            ,borderSide:BorderSide(color:_isValidity?Colors.green: Colors.black)),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100.r)
            ,borderSide:BorderSide(color: Colors.blueAccent)),
          errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100.r)
              ,borderSide:BorderSide(color: Colors.redAccent)),

        fillColor: Colors.white,
        filled: true,
        hintStyle: TextStyle(color: Color(0xffBFBFBF),fontWeight: FontWeight.w900,fontSize: 14.sp),

      ),
    );
  }
}
