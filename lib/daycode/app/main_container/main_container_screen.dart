import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:personal_portofolio/daycode/app/landing/landing_screen.dart';
import 'package:personal_portofolio/daycode/app/main_container/main_container_controller.dart';
import 'package:personal_portofolio/daycode/app/navigation_bar/navigation_bar.dart';
import 'package:personal_portofolio/daycode/app/services/services_screen.dart';
import 'package:personal_portofolio/daycode/core/widgets/d_text.dart';
import 'package:personal_portofolio/daycode/core/widgets/responsive.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class MainContainerScreen extends GetView<MainContainerController> {
  const MainContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(Responsive.isDesktop(context) ? 100 : 60),
        child: DNavigationBar(),
      ),
      body: Responsive(
        mobile: renderScreens(horizontalPadding: 20, verticalPadding: 70),
        tablet: renderScreens(horizontalPadding: 30, verticalPadding: 70),
        desktop: renderScreens(horizontalPadding: 50, verticalPadding: 120),
      ),
    );
  }

  Widget renderScreens({
    required double horizontalPadding,
    required double verticalPadding,
  }) {

    final screens = [
      LandingScreen(),
      SizedBox(height: 0.1.sh),
      ServicesScreen(),
      SizedBox(height: 0.1.sh),
      Center(
        child: DText(
          text: "© 2025 Muhammad Rizky. All rights reserved.",
          type: DTextType.bodySmall,
        ),
      )
    ];
    
    return ScrollablePositionedList.builder(
      itemCount: screens.length,
      itemScrollController: controller.scrollController,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.only(left: horizontalPadding, right: horizontalPadding, top: verticalPadding, bottom: 10),
        child: screens[index],
      ),
      itemPositionsListener: controller.itemPositionsListener,
    );
  }
}
