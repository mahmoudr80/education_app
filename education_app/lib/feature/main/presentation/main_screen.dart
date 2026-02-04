import 'package:education_app/core/widgets/custom_nav_bar.dart';
import 'package:education_app/feature/calender/presentation/calender_screen.dart';
import 'package:education_app/feature/home/presentation/screens/home_screen.dart';
import 'package:education_app/feature/job/presentation/screens/job_screen.dart';
import 'package:education_app/feature/profile/presentation/screens/profile_screen.dart';
import 'package:education_app/feature/search/presentation/search_screen.dart';
import 'package:flutter/material.dart';


import '../../../core/global/current_screen.dart';
import '../../../core/utils/en_nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late List<Widget>kListScreens=[
    HomeScreen(profileTapped: profileTapped),
    SearchScreen(),
    CalenderScreen(),
    JobScreen(searchTapped: searchTapped,),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
      Stack(
        children: [
          Positioned.fill(
              child:Container(
                child: kListScreens[enCurrentScreen.index],
              )),
         CustomBottomNavBar(enNavBar: enCurrentScreen,
             homeTapped: homeTapped,
             searchTapped: searchTapped,
             calenderTapped: calenderTapped,
             jobTapped: jobTapped,
             profileTapped: profileTapped)
        ],
      )),
    );
  }



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


}
