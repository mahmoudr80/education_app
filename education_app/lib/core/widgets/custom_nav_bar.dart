

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../gen/assets.gen.dart';
import '../utils/en_nav_bar.dart';

class CustomBottomNavBar extends StatelessWidget {
   CustomBottomNavBar({super.key,required this.enNavBar, required this.homeTapped, required this.searchTapped, required this.calenderTapped, required this.jobTapped, required this.profileTapped,});
 EnNavBar enNavBar;
final void Function()? homeTapped;
final void Function()? searchTapped;
final void Function()? calenderTapped;
final void Function()? jobTapped;
final void Function()? profileTapped;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 24.h,
      left: 24.w,
      child: Container(
        width: 345.r,
        height: 66.r,
        decoration: BoxDecoration(color: Color(0xff2F2F2F),borderRadius: BorderRadius.circular(999.r)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            IconButton(onPressed: homeTapped,icon: Image.asset(Assets.images.homeNav.path, width:32.r,height: 32.r ,fit: BoxFit.fitHeight,color:enNavBar==EnNavBar.home?Colors.white: null,)),
            IconButton(onPressed: searchTapped,icon:Image.asset(Assets.images.searchNav.path, width:32.r,height: 32.r ,fit: BoxFit.fitHeight,color:enNavBar==EnNavBar.search?Colors.white: null,)),
            IconButton(onPressed: calenderTapped,icon:Image.asset(Assets.images.calenderNav.path, width:32.r,height: 32.r ,fit: BoxFit.fitHeight,color:enNavBar==EnNavBar.calender?Colors.white: null,)),
            IconButton(onPressed: jobTapped,icon:Image.asset(Assets.images.favouritesNav.path, width:32.r,height: 32.r ,fit: BoxFit.fitHeight,color:enNavBar==EnNavBar.job?Colors.white: null,)),
            IconButton(onPressed: profileTapped,icon:Image.asset(Assets.images.profileNav.path, width:32.r,height: 32.r ,fit: BoxFit.fitHeight,color:enNavBar==EnNavBar.profile?Colors.white: null,)),
            ],
          ),

       ),
    );
  }
}
