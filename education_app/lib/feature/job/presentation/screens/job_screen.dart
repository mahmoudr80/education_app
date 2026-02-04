import 'package:education_app/feature/job/data/job_data.dart';
import 'package:education_app/feature/job/presentation/screens/favourite_screen.dart';
import 'package:education_app/feature/job/presentation/widget/job_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JobScreen extends StatefulWidget {
  const JobScreen({super.key, required this.searchTapped});
final void Function()searchTapped;
  @override
  State<JobScreen> createState() => _JobScreenState();
}

class _JobScreenState extends State<JobScreen> {
bool firstScreen =true;
void favTapped(){
  setState(() {
    firstScreen = false;
  });
}
void backTapped(){
  setState(() {
    firstScreen = true;
  });
}
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(vertical: 22.h,horizontal: 24.w),
    child: firstScreen? Column(
      children: [
        Row(
          spacing: 92.w,
          children: [
            IconButton(onPressed:favTapped,
                icon:Icon(Icons.favorite_outlined,size: 24.r,)),
            Text("Career",style: TextStyle(fontSize: 24.sp,fontWeight: FontWeight.w600),),
            IconButton(onPressed: widget.searchTapped,
                icon:Icon(Icons.search_outlined,size: 24.r,)),
          ],
        ),
        SizedBox(height: 36.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Job",style: TextStyle(fontSize: 24.sp,fontWeight: FontWeight.w600),),
            Icon(Icons.menu_outlined,size: 24.r,)
          ],
        ),
        SizedBox(height: 25.h,),
        Expanded(
          child: ListView.separated(itemBuilder: (context, index) {
            return JobCard(job: listOfAllJobs[index],favTapped: (){},);
          }, separatorBuilder: (context, index) => SizedBox(height: 10.h,), itemCount:listOfAllJobs.length),
        )

      ],
    ):
      FavouriteScreen(backTapped: backTapped),);
  }
}
