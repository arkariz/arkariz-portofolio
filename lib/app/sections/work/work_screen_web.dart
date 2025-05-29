import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:personal_portofolio/app/sections/work/widgets/services_card.dart';
import 'package:personal_portofolio/app/sections/work/work_screen_controller.dart';
import 'package:personal_portofolio/core/widgets/custom_text.dart';

class WorkScreenWeb extends GetView<WorkScreenController> {
  WorkScreenWeb({super.key});

  final double carouselHeight = 450;
  final double cardWidth = 290;
  final double verticalSpacing = 20.h;
  final double cardSpacing = 80;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: verticalSpacing,
          children: [
            CustomText(text: "What I can do?", fontSize: 80.sp, fontWeight: FontWeight.bold),
            CustomText(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent mi nisi, placerat a rhoncus nec, dapibus eu metus. Praesent sapien nisi, consectetur mattis nulla nec, luctus tristique diam. Duis tempor volutpat dui in scelerisque. Morbi iaculis id risus nec eleifend. Vestibulum accumsan interdum gravida. Integer tempor posuere urna, a consectetur tellus dignissim pretium. Duis semper felis et leo euismod, nec rutrum massa laoreet. Interdum et malesuada fames ac ante ipsum primis in faucibus. Ut et congue mi, in gravida ipsum. Aenean accumsan dapibus neque sed pulvinar. Sed pretium bibendum est. Nulla facilisi. Etiam libero quam, porta vel consequat at, tempor eget enim. Duis massa lorem, molestie non molestie nec, faucibus sit amet lacus. Aenean sed egestas nulla."),
            Container(
              constraints: BoxConstraints(
                maxWidth: constraints.maxWidth,
                minHeight: carouselHeight,
                maxHeight: carouselHeight,
              ),
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: controller.services.length,
                separatorBuilder: (context, index) => SizedBox(width: cardSpacing),
                itemBuilder: (context, index) => ServicesCard(
                  icon: controller.services[index].icon,
                  name: controller.services[index].name,
                  description: controller.services[index].description,
                  tool: controller.services[index].tool,
                  maxWidth: cardWidth,
                ),
              ),
            )
          ],
        );
      }
    );
  }
}