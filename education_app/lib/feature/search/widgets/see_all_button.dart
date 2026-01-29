import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SeeAllButton extends StatelessWidget {
  const SeeAllButton({super.key});

  @override
  Widget build(BuildContext context) {
    return
      TextButton(onPressed: (){}, child: Text(
      "See all",
      style: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
        color: Color(0xffD2FF1F),
        decoration: TextDecoration.underline,
        decorationColor: Color(0xffD2FF1F),
        decorationThickness: 1,


      ),
    ));
  }
}
