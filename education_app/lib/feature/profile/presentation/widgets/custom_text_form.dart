import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm({super.key, required this.controller, required this.hintText});
final TextEditingController controller;
final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      decoration: InputDecoration(
        hintText:hintText,
          hintStyle: TextStyle(color: Colors.grey),
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: Colors.blue.shade900))
          ,focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: Colors.blue))
      ),
    );
  }
}
