import 'package:education_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class LearningWidget extends StatefulWidget {
  const LearningWidget({super.key,required this.tapped, required this.title, required this.imagePath, required this.videoId});
final void Function()?tapped;
final String title;
final String imagePath;
final String videoId;

  @override
  State<LearningWidget> createState() => _LearningWidgetState();
}

class _LearningWidgetState extends State<LearningWidget> {
  late YoutubePlayerController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = YoutubePlayerController(initialVideoId: widget.videoId,flags: YoutubePlayerFlags(
      mute: false,enableCaption: true,autoPlay: true,controlsVisibleAtStart: true,
    ));
    controller.unMute();
    controller.setVolume(100);
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: widget.tapped,
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
               Text(
                'My learning',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
            ],
          ),
          SizedBox(height: 24.h),
          Text(
            widget.title,
            style: TextStyle(
              color: Color(0xffFFFFFF),
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.h),
          Stack(
            children: [
              Container(
              width:345.w,
              height: 188.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                image:DecorationImage(image:Image.asset(widget.imagePath).image,
                  fit:BoxFit.cover,
                ),
              ),
                child: YoutubePlayerBuilder(player: YoutubePlayer(controller: controller,onReady:  () {
                  controller.unMute();
                  controller.setVolume(100); // ensure max volume
                },
                  showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.red,),
                    builder: (context,player) {
                  return Center(
                    child: player,
                  );

                    },),
            ),
            Positioned(
                left: 20.w,
                top: 10.h,
                child: Image.asset(Assets.images.verifyIcon.path))
            ]
          ),
          SizedBox(height: 14.h),
          Container(
            padding: const EdgeInsets.all(17),
            decoration: BoxDecoration(
              color: const Color(0xff1A1A1A),
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: const Text(
              'Explore strategies, tools, and platforms to excel in today’s digital landscape. '
                  'From SEO and social media to email campaigns and analytics, gain practical '
                  'skills for success. Perfect for beginners and experienced marketers alike. '
                  'Enroll now and unleash your digital marketing potential. Watch video and '
                  'doing homework!',
              style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 15,
                fontWeight: FontWeight.w400,
                height: 1.6,
              ),
            ),
          ),

          SizedBox(height: 8.h),

          Row(
            children: [
              TextButton(
                onPressed: () {},
                child:  Text(
                  'Home work >',
                  style: TextStyle(
                    color: Colors.white60,
                    decoration: TextDecoration.underline,
                    decorationColor: Color(0xff6C6C6C),
                    decorationThickness: 1,
                    fontSize: 20.sp,
                  ),
                ),
              ),
              const Spacer(),
              FloatingActionButton.small(onPressed: (){},
                backgroundColor: Color(0xff252525),
                shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.r)
                ) ,
                child: Icon(Icons.favorite_border,color: Colors.white),
              ),
              FloatingActionButton.small(onPressed: (){},
                backgroundColor: Color(0xff252525),
                shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.r)
                ) ,
                child: Icon(Icons.download,color: Colors.white),
              ),
            ],
          ),
        ],
    );
  }
}
