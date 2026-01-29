import 'package:education_app/feature/home/presentation/widgets/notification_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../gen/assets.gen.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key,required this.tapped});
final void Function()? tapped;

  @override
  Widget build(BuildContext context) {
    List<Widget> listNotification=[
      NotificationItem(
        text:
        "Hi, Jane! Just a reminder that you have one unfinished lecture, watch it now to complete the progress!",
      ),
      NotificationItem(
        text: "You have a new unread message!",
      ),
      NotificationItem( text:
      "You received an award from our moderators and entered the top 100 students of our service! Congratulations and we give you 1000 rating points!",
      ),
      NotificationItem(
        text:
        "Hi, Jane! Just a reminder that you have one unfinished lecture, watch it now to complete the progress!",
      ),
      NotificationItem(
        text: "You have a new unread message!",
      ),
      NotificationItem( text:
      "You received an award from our moderators and entered the top 100 students of our service! Congratulations and we give you 1000 rating points!",
      ),
      NotificationItem(
        text:
        "Hi, Jane! Just a reminder that you have one unfinished lecture, watch it now to complete the progress!",
      ),
      NotificationItem(
        text: "You have a new unread message!",
      ),
      NotificationItem( text:
      "You received an award from our moderators and entered the top 100 students of our service! Congratulations and we give you 1000 rating points!",
      ),
      NotificationItem(
        text:
        "Hi, Jane! Just a reminder that you have one unfinished lecture, watch it now to complete the progress!",
      ),
      NotificationItem(
        text: "You have a new unread message!",
      ),
      NotificationItem( text:
      "You received an award from our moderators and entered the top 100 students of our service! Congratulations and we give you 1000 rating points!",
      ),

    ];
    return Column(
      children: [
      Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: tapped),
        Text(
          "Notifications",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        IconButton(
          icon: Image.asset( Assets.images.deleteIcon.path,height: 20.r,width: 20.r,
            fit: BoxFit.contain,color: Colors.white,),
          onPressed:(){},
        ),
      ],
    ),
        SizedBox(
          height: 770.h,
          child: ListView.separated(itemBuilder: (context, index) => listNotification[index],
              separatorBuilder:(context, index) => SizedBox(height: 10.h,),
              itemCount: listNotification.length),
        )

      ],
    );
  }
}
