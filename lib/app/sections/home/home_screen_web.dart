import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:personal_portofolio/app/sections/home/home_screen_controller.dart';
import 'package:personal_portofolio/core/widgets/custom_text.dart';

class HomeScreenWeb extends GetView<HomeScreenController> {
  const HomeScreenWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(text: "Hi there, Welcome to My Space", fontSize: 30.sp, fontWeight: FontWeight.w100),
                SizedBox(height: 10.h),
                CustomText(text: "I'm Arkariz,", fontSize: 80.sp, fontWeight: FontWeight.bold),
                animatedText(),
                SizedBox(height: 20.h),
                const CustomText(
                  text: "A professional Flutter developer excels in crafting dynamic and visually appealing cross-platform mobile applications with expertise in Dart and a deep understanding of Flutter's rich widget ecosystem.",
                )
              ],
            ),
          ),
          const Spacer(flex: 1),
          renderProfilePicture()
        ],
      ),
    );
  }

  Expanded renderProfilePicture() {
    return Expanded(
      flex: 1,
      child: Obx(() => InkWell(
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
            radius: 150,
            backgroundColor: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: ClipOval(child: Image.asset("assets/images/profile_picture.jpg")),
            ),
          ),
        ),
      )),
    );
  }

  Widget animatedText() {
    return DefaultTextStyle(
      style: TextStyle(fontSize: 60.sp, color: Colors.white),
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