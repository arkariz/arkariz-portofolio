import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:personal_portofolio/app/sections/contact/contact_screen_controller.dart';
import 'package:personal_portofolio/core/colors/colors.dart';
import 'package:personal_portofolio/core/widgets/custom_text.dart';

class ContactScreenTablet extends GetView<ContactScreenController> {
  const ContactScreenTablet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 20.h,
      children: [
        CustomText(text: "Let's Work Together", fontSize: 100.sp, fontWeight: FontWeight.bold),
        CustomText(
          text:"Got a project in mind or just want to chat about potential collaboration?\nI’m always open to new opportunities, creative ideas, or a simple virtual coffee ☕",
          fontSize: 30.sp,
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(250, 50),
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.transparent,
            padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 15.h),
            side: const BorderSide(
              color: primaryColor,
              width: 2,
            ),
          ),
          child: CustomText(
            text: "Get in touch",
            color: primaryColor,
          )
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10.w,
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/github.svg',
                colorFilter: ColorFilter.mode(primaryColor, BlendMode.srcIn),
                width: 30,
                height: 30,
              ),
            ),
            IconButton(onPressed: () {}, icon: SvgPicture.asset(
              'assets/icons/whatsapp.svg',
              colorFilter: ColorFilter.mode(primaryColor, BlendMode.srcIn),
              width: 30,
              height: 30,
            )),
            IconButton(onPressed: () {}, icon: SvgPicture.asset(
              'assets/icons/linkedin.svg',
              colorFilter: ColorFilter.mode(primaryColor, BlendMode.srcIn),
              width: 30,
              height: 30,
            )),
          ],
        ),
        SizedBox(height: 0.2.sh),
      ],
    );
  }
}