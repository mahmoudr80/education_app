import 'dart:io';

import 'package:education_app/core/constants/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/global/cls_global.dart';
import '../../../../gen/assets.gen.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Global.userBox.get(Constants.currentUserKey);

    return    Container(
      height: 126.r,
      width: 126.r,
      padding: EdgeInsets.all(2.r),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Color(0xffD2FF1F), width: 3.w),
          image:DecorationImage(image:
          (user!.filePath != null &&user.filePath != "" )
              ?FileImage(File(user.filePath??""))
              :AssetImage(Assets.images.profileImg.path)
           // Image.file(Global.userBox.get(Constants.currentUserKey)?.imageFile??File("")).image
          )
      ),


    );
  }
}
