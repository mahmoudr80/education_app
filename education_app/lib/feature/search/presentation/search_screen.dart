
import 'package:education_app/core/global/current_screen.dart';
import 'package:education_app/core/widgets/custom_goto_container.dart';
import 'package:education_app/feature/calender/presentation/calender_screen.dart';
import 'package:education_app/feature/home/presentation/screens/home_screen.dart';
import 'package:education_app/feature/job/presentation/screens/job_screen.dart';
import 'package:education_app/feature/profile/presentation/profile_screen.dart';
import 'package:education_app/feature/search/widgets/filter_widget.dart';
import 'package:education_app/feature/search/widgets/see_all_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/en_nav_bar.dart';
import '../../../core/widgets/custom_nav_bar.dart';

class  SearchScreen extends StatelessWidget {
  const SearchScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    enCurrentScreen = EnNavBar.search;
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        spacing: 10.h,
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
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
            ),
            SizedBox(height: 5.h,),

            Text("Popular Search",style: TextStyle(color: Color(0xffD2FF1F),fontWeight: FontWeight.w600,fontSize: 18.sp),),
            SizedBox(height: 5.h,),
            FilterWidget(),
            SizedBox(height: 5.h,),
            Text("Categories",style: TextStyle(color: Color(0xffD2FF1F),fontWeight: FontWeight.w600,fontSize: 18.sp),),
           SizedBox(height: 5.h,),
            CustomGotoContainer(title: "UI/UX Design"),
            CustomGotoContainer(title: "Adobe Photoshop"),
            CustomGotoContainer(title: "Adobe XD"),
            CustomGotoContainer(title: "Java"),
            CustomGotoContainer(title: "Lightroom"),
            CustomGotoContainer(title: "Adobe Illustrator"),
            SeeAllButton()

          ],
        ),
    );
  }
}
