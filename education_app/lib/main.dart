import 'package:education_app/education_app.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';


import 'core/constants/Constants.dart';
import 'core/global/cls_global.dart';
import 'feature/auth/domain/user_class.dart';

void main()async {
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
 Global.userBox= await Hive.openBox<User>(Constants.currentUserBoxName);
  runApp(const EducationApp());
}
