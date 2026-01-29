  import 'package:education_app/core/widgets/filter_container.dart';
  import 'package:flutter/material.dart';
  import 'package:flutter_screenutil/flutter_screenutil.dart';

  class FilterWidget extends StatefulWidget {
    const FilterWidget({super.key});

  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  int selectedIndex = -1;
    @override
    Widget build(BuildContext context) {
      List<String>listFilters=[
       "Game dev",
       "Coding",
       "Java",
       "UI/UX",
       "Python",
       "Marketing",
      ];
      return   GridView.builder(
          padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            crossAxisSpacing: 7.w,
            mainAxisSpacing: 12.h,
            childAspectRatio: 3.99,),
        itemCount: listFilters.length,
        itemBuilder: (context, index) {
        return FilterContainer(data: listFilters[index],tapped: (){
          setState(() {
            selectedIndex = index;
          });
        },homeSelected: selectedIndex==index,);
        },

      );
    }
}
//
// SizedBox(
// height: 80.h,
// child: Column(
// spacing: 5.h,
// children: [
// Row(
// spacing: 5.w,
// children: [
// FilterContainer(data: "UI/UX"),
// FilterContainer(data: "  Python  "),
// FilterContainer(data: "     Marketing     "),
// ],),
// Row(
// spacing: 5.w,
// children: [
// FilterContainer(data: " Game dev "),
// FilterContainer(data: " Coding "),
// FilterContainer(data: "Java"),
// ],),
// ],
// ),);