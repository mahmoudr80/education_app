import 'package:education_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/global/cls_global.dart';

class CalenderWidget extends StatelessWidget {
 const  CalenderWidget({super.key,  this.taskCount = 3, required this.title,required this.start,
   required this.end, this.tapped });
final int taskCount;
final String title;
final TimeOfDay start ;
final TimeOfDay end;
final void Function()? tapped;
   String format(TimeOfDay t) {
     final h = t.hour.toString().padLeft(2, '0');
     final m = t.minute.toString().padLeft(2, '0');
     return '$h:$m';
   }
  @override
  Widget build(BuildContext context) {
    Color color = Global.getRandomColor();
    String shapePath = Global.getRandomShapePath();
    return Container(
      padding: EdgeInsets.all(20.r),
      // width: 345.w,
       height: 165.h,
      decoration: BoxDecoration(color: color,borderRadius: BorderRadius.circular(18.r),
      image: DecorationImage(image:Image.asset(shapePath,color: color,fit: BoxFit.scaleDown,).image,alignment:Alignment.bottomRight
          ,colorFilter: ColorFilter.linearToSrgbGamma() )),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(title,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20.sp,color: Colors.black),),
                Text("${format(start)}-${format(end)}",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14.sp,color: Colors.black),),
              ],
            ),
            Text("${taskCount.toString()} Tasks",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Colors.black,decoration: TextDecoration.underline,decorationColor: Colors.black,decorationThickness:1.6,decorationStyle:TextDecorationStyle.solid  ),)
          ],
        ),
        Row(
          children: [
            Assets.images.desktopIcon.image(),
            Expanded(child: Text("Online",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14.sp,color: Colors.black))),
            InkWell(
              onTap: tapped,
              child: Container(
                  height: 28.r,
                  width: 28.r,
                  decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(100.r)),
                  child: Icon(Icons.south_east_outlined,color: Colors.white,)),
            )
          ],
        )
      ],
    ),
    );
  }
}
