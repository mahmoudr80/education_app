import 'dart:io';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/adapters.dart';

import '../../feature/auth/domain/user_class.dart';
import '../../feature/home/domain/cls_course.dart';
import '../../feature/job/domain/clsJob.dart';
import 'package:path_provider/path_provider.dart';

import '../../gen/assets.gen.dart';
class Global{
 static List<Color>listColors=[Color(0xffD2FF1F),Color(0xffFF825C),Color(0xffDCC1FF),Color(0xffFFE078),Color(0xffDFFC6B),Color(0xffFEF19D)];
 static List<String>listShapes=[Assets.images.interfaceForcolor.path,Assets.images.interfaceBackcolor.path,
   Assets.images.protofolioBackcolor.path,Assets.images.protofolioForcolor.path,
   Assets.images.figureBackcolor.path,Assets.images.figureForcolor.path];

 static Color getRandomColor(){
    int number = Random().nextInt(6); // 0 to 5
    return listColors[number];
  }
 static String getRandomShapePath(){
   int number = Random().nextInt(6); // 0 to 5
   return listShapes[number];
 }


 static late final Box<User> userBox;

 static String generateUniqueUsername({String prefix = "Anonymous", int codeLength = 5}) {
   const chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
   final random = Random();

   String code = List.generate(codeLength, (index) => chars[random.nextInt(chars.length)]).join();
   return "$prefix($code)";
 }
 static Future<File> assetToFile(String assetPath, String filename) async {
   // Load asset as byte data
   final byteData = await rootBundle.load(assetPath);

   // Get temporary directory
   final tempDir = await getTemporaryDirectory();

   // Create a temporary file
   final file = File('${tempDir.path}/$filename');

   // Write bytes to file
   await file.writeAsBytes(byteData.buffer.asUint8List());

   return file;
 }

}