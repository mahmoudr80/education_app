import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
      return Container(
        padding: const EdgeInsets.all(22),
        decoration: BoxDecoration(
          color: const Color(0xFF2A2A2A),
          borderRadius: BorderRadius.circular(19),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                text,
                style:  TextStyle(
                  color: Colors.white,
                  fontSize: 15.sp,
                  height: 1.4,
                ),
              ),
            ),
            SizedBox(width: 8.w),
            Icon(
              Icons.close,
              color: Colors.white,
              size: 20.r,
            ),
          ],
        ),
      );
    }
  }


