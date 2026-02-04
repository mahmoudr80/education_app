import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../core/constants/Constants.dart';
import '../../../../core/global/cls_global.dart';
import '../../../auth/domain/user_class.dart';
import '../../../auth/presentation/widgets/custom_button.dart';
import '../widgets/custom_text_form.dart';
import '../widgets/profile_image_widget.dart';


class EditScreen extends StatefulWidget {
  const EditScreen({super.key, this.backTapped});
final void Function()? backTapped;
  @override
  State<EditScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<EditScreen> {
  User user = Global.userBox.get(Constants.currentUserKey)??User(password: "1234", email: "admin@gmail.com");
   XFile? _image ;
  ImagePicker picker = ImagePicker();


  TextEditingController nameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return  SingleChildScrollView(
        padding: EdgeInsets.only(right: 16.w,left: 16.w,top: 20.h),
        child: Column(
          spacing:11.h ,
          children: [
            Row(
              children: [
                IconButton(onPressed: widget.backTapped, icon:
                Icon(Icons.arrow_back_ios,color: Colors.white,))
              ],
            ),
            SizedBox(height: 80.h,),
            ProfileImageWidget(),
            CustomButton(title: "Upload From Camera",tapped: uploadFromCamera,),
            CustomButton(title: "Upload From Gallery",tapped: uploadFromGallery,),
            Divider(),
            CustomTextForm(controller: nameController,hintText:  "Enter Full Name",),
            CustomTextForm(controller: usernameController,hintText:  "Enter username"),
            CustomButton(title: "Done",tapped: done,),
          ],
        ),
      );
  }

  void uploadFromCamera()async {
     XFile? image = await picker.pickImage(source: ImageSource.camera);
     setState(() {
       _image = image;
       user.filePath = _image?.path??"";
     });

  }
  void uploadFromGallery()async {
    XFile? image = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
      user.filePath = _image?.path??"";
    });

  }

  void done()async {
    if(nameController.text==""||usernameController.text=="")
      {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invalid credentials"),backgroundColor: Colors.red,
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(25.r)),duration: Duration(seconds: 1),)
        );
        return;
      }
    else{
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Updated Successfully"),backgroundColor: Colors.green,
            shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(25.r)),duration: Duration(seconds: 1)));
          }
Global.userBox.put(Constants.currentUserKey,User(password: user.password, email:user.email,
  fullName: nameController.text,imagePath: user.imagePath,
    username:usernameController.text,filePath:_image?.path??"", ));
    Future.delayed(Duration(milliseconds: 200)).then((value) {
      setState(() {

      });
    },);
}
}

