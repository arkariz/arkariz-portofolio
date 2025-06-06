import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:personal_portofolio/core/widgets/responsive.dart';
import 'package:personal_portofolio/daycode/app/landing/landing_controller.dart';
import 'package:personal_portofolio/daycode/core/theme/daycode/daycode_theme.dart';
import 'package:personal_portofolio/daycode/core/widgets/d_text.dart';

class LandingScreen extends GetView<LandingController> {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: DaycodeTheme.instance.theme.colorScheme.onSurfaceVariant,
      ),
      padding: EdgeInsets.all(120.w),
      child: Column(
        spacing: 20,
        children: [
          renderProfilePicture(),
          DText(
            text: "I'm Rizky — a Flutter craftsman turning ideas into smooth, stunning mobile & web experiences.",
            type: DTextType.displaySmall,
            textAlign: TextAlign.center,
          ),
          animatedText(),
          renderContact(),
        ],
      ),
    );
  }

  Widget animatedText() {
    return DefaultTextStyle(
      style: DaycodeTheme.instance.theme.textTheme.displaySmall!,
      child: AnimatedTextKit(
        repeatForever: true,
        animatedTexts: [
          TypewriterAnimatedText('Cross-platform UI'),
          TypewriterAnimatedText('Performance-focused'),
          TypewriterAnimatedText('Clean, testable architecture'),
          TypewriterAnimatedText('Pixel-perfect design fidelity'),
        ],
      ),
    );
  }

  Row renderContact() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 20.w,
      children: [
        iconItem(url: "https://github.com/arkariz", iconPath: 'assets/icons/github.svg'),
        iconItem(url: "https://wa.me/62895364632092", iconPath: 'assets/icons/whatsapp.svg'),
        iconItem(url: "https://www.linkedin.com/in/muhammad-rizky-0b8050212/", iconPath: 'assets/icons/linkedin.svg'),
      ],
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
        transform: getMatrix4(),
        child: CircleAvatar(
          radius: 80,
          backgroundColor: Colors.red,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: ClipOval(child: Image.asset("assets/images/profile_picture.jpg")),
          ),
        ),
      ),
    ));
  }

  Matrix4 getMatrix4() {
    return controller.isHoverProfilePicture.isTrue
      ? (Matrix4.identity()
        ..translate(0.0, controller.profilePictureOffset.value, 0.0)
        ..scale(1.1, 1.1, 1.1))
      : Matrix4.identity()..translate(0.0, controller.profilePictureOffset.value, 0.0);
  }

  Widget iconItem({required String url, required String iconPath}) {
    return IconButton(
      enableFeedback: true,
      onPressed: () => controller.openUrl(url),
      icon: SvgPicture.asset(
        iconPath,
        colorFilter: ColorFilter.mode(DaycodeTheme.instance.theme.colorScheme.primary, BlendMode.srcIn),
        width: Responsive.isDesktop(Get.context!) ? 30.w : 60.w,
      ),
    );
  }
}