
import 'package:education_app/feature/job/presentation/screens/favourite_screen.dart';
import 'package:education_app/feature/job/presentation/widget/job_card.dart';
import 'package:education_app/feature/profile/presentation/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/global/current_screen.dart';
import '../../../../core/utils/en_nav_bar.dart';
import '../../../../core/widgets/custom_nav_bar.dart';
import '../../../../gen/assets.gen.dart';
import '../../../calender/presentation/calender_screen.dart';
import '../../../home/presentation/screens/home_screen.dart';
import '../../../search/presentation/search_screen.dart';
import '../../domain/clsJob.dart';

class  JobScreen extends StatefulWidget {
  const JobScreen ({super.key, this.searchTapped,});
final  void Function()?searchTapped;
  @override
  State<JobScreen> createState() => _JobScreenState();
}

class _JobScreenState extends State<JobScreen> {

  bool showFirst = true;
  void tapped (){
setState(() {
  showFirst = !showFirst;
});
  }
  @override
  Widget build(BuildContext context) {
    enCurrentScreen = EnNavBar.job;
    return   Padding(
      padding: const EdgeInsets.symmetric(vertical:22,horizontal:24 ),
      child:showFirst? Column(
        children: [
          Row(
            spacing: 95.w,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed:tapped,
                  icon: Icon(Icons.favorite_border,size: 24.r)),
              Text("Career",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24.sp,color: Colors.white),),
              IconButton(
                onPressed: widget.searchTapped,
                  icon: Icon(Icons.search_outlined,size: 24.r,)),
            ],
          ),
          SizedBox(height: 36.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Job",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24.sp,color: Colors.white),),
              Icon(Icons.menu_outlined,size:24.r ,)
            ],
          ),
          SizedBox(height: 25.h,),
          SizedBox(
            height: 645.h,
            child: ListView.separated(itemBuilder: (context, index) => JobCard(job: Job.listOfAllJobs[index]),
                separatorBuilder: (context, index) => SizedBox(height: 10.h,),
                itemCount: Job.listOfAllJobs.length),
          )
        ],
      ):FavouriteScreen(tapped:tapped ),
    );
  }
}
