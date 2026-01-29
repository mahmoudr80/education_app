

import 'package:education_app/core/constants/list_screens.dart';
import 'package:education_app/core/utils/en_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/global/current_screen.dart';
import '../../../core/widgets/custom_nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  void Function()? searchTapped(){
    if(enCurrentScreen==EnNavBar.search)
      {
        return null;
      }
    setState(() {
      enCurrentScreen = EnNavBar.search;
    });
  }

  void Function()? homeTapped(){
    if(enCurrentScreen==EnNavBar.home)
    {
      return null;
    }
    setState(() {
      enCurrentScreen = EnNavBar.home;
    });
  }

  void Function()? profileTapped(){
    if(enCurrentScreen==EnNavBar.profile)
    {
      return null;
    }
    setState(() {
      enCurrentScreen = EnNavBar.profile;
    });
  }

  void Function()? calenderTapped(){
    if(enCurrentScreen==EnNavBar.calender)
    {
      return null;
    }
    setState(() {
      enCurrentScreen = EnNavBar.calender;
    });
  }

  void Function()? jobTapped(){
    if(enCurrentScreen==EnNavBar.job)
    {
      return null;
    }
    setState(() {
      enCurrentScreen = EnNavBar.job;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                child:kListScreen[enCurrentScreen.index],
              ),
            ),
            CustomBottomNavBar(
              enNavBar: enCurrentScreen,
              searchTapped:searchTapped,
              homeTapped:homeTapped,
              profileTapped:profileTapped,
              calenderTapped:calenderTapped,
              jobTapped:jobTapped,
            ),
          ],
        ),
      ) ,
    );
  }
}
