import 'package:education_app/core/widgets/custom_goto_container.dart';
import 'package:education_app/feature/search/widgets/filter_widget.dart';
import 'package:education_app/feature/search/widgets/search_widget.dart';
import 'package:education_app/feature/search/widgets/see_all_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchWidget(),
        SizedBox(height: 10.h,),
        Text("Popular Search",style: TextStyle(color: Color(0xffD2FF1F),fontSize: 18.sp,fontWeight: FontWeight.w600),),
        SizedBox(height: 5.h,),
        FilterWidget(),
        SizedBox(height: 5.h,),
        Text("Categories",style: TextStyle(color: Color(0xffD2FF1F),fontSize: 18.sp,fontWeight: FontWeight.w600),)
        ,SizedBox(height: 5.h,),
        CustomGotoContainer(title: "UI/UX Designer"),
        CustomGotoContainer(title: "Adobe Photoshop"),
        CustomGotoContainer(title: "Adobe XD"),
        CustomGotoContainer(title: "Java"),
        CustomGotoContainer(title: "Lightroom"),
        CustomGotoContainer(title: "Adobe Illustrator"),
        SeeAllButton()
      ],
    );
  }
}
