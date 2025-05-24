import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:personal_portofolio/app/sections/home/home_screen_controller.dart';
import 'package:personal_portofolio/core/widgets/custom_text.dart';

class HomeScreenMobile extends GetView<HomeScreenController> {
  const HomeScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          renderProfilePicture(),
          SizedBox(height: 30.h),
          CustomText(
            text: "Hi there, Welcome to My Space",
            fontSize: 50.sp,
            fontWeight: FontWeight.w100,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10.h),
          CustomText(
            text: "I'm Arkariz,",
            fontSize: 100.sp,
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.center,
          ),
          animatedText(),
          SizedBox(height: 20.h),
          CustomText(
            text: "A professional Flutter developer excels in crafting dynamic and visually appealing cross-platform mobile applications with expertise in Dart and a deep understanding of Flutter's rich widget ecosystem.",
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }

  Widget renderProfilePicture() {
    return Obx(() => InkWell(
      hoverColor: Colors.transparent,
      onHover: (bool value) {
        controller.isHoverProfilePicture.value = value;
      },
      onTap: (){},
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 1500),
        curve: Curves.easeInOut,
        transform: controller.isHoverProfilePicture.isTrue
          ? (Matrix4.identity()
            ..translate(0.0, controller.profilePictureOffset.value, 0.0)
            ..scale(1.1, 1.1, 1.1))
          : Matrix4.identity()..translate(0.0, controller.profilePictureOffset.value, 0.0),
        child: CircleAvatar(
          radius: 120,
          backgroundColor: Colors.red,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: ClipOval(child: Image.asset("assets/images/profile_picture.jpg")),
          ),
        ),
      ),
    ));
  }

  Widget animatedText() {
    return DefaultTextStyle(
      style: TextStyle(fontSize: 35.sp, color: Colors.white),
      child: AnimatedTextKit(
        repeatForever: true,
        animatedTexts: [
          TypewriterAnimatedText('A Flutter Developer'),
          TypewriterAnimatedText('A Web Developer'),
          TypewriterAnimatedText('A Mobile Developer'),
        ],
      ),
    );
  }
}
