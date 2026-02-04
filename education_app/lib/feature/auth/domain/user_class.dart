import 'dart:io';

import 'package:hive_flutter/hive_flutter.dart';

import '../../../core/global/cls_global.dart';
import '../../../gen/assets.gen.dart';

part 'user_class.g.dart';

@HiveType(typeId: 5)
class User {

  @HiveField(0)
  String? email;

  @HiveField(1)
  String ?password;

  @HiveField(2)
  String ?username =Global.generateUniqueUsername();
  @HiveField(3)
  String ?fullName;
  @HiveField(4)
  String? imagePath= Assets.images.profileImg.path;
  @HiveField(5)
  String? filePath ;
  User({required this.password, required this.email,this.fullName="Anonymous",this.username,this.imagePath,this.filePath});

}
