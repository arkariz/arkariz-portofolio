import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:personal_portofolio/app/navigation_bar/appbar_desktop.dart';
import 'package:personal_portofolio/app/sections/home/home_screen.dart';
import 'package:personal_portofolio/app/sections/main_container/main_container_controller.dart';
import 'package:personal_portofolio/core/widgets/responsive.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class MainContainerScreen extends GetView<MainContainerController> {
  MainContainerScreen({super.key});

  final screens = [
    const HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: Responsive(
          mobile: SizedBox(),
          tablet: SizedBox(),
          desktop: AppbarDesktop()
        ),
      ),
      body: Stack(
        children: [
          renderBackground(),
          renderScreens(),
        ],
      ),
    );
  }

  Widget renderScreens() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.15.sw, vertical: 0.15.sh),
      child: ScrollablePositionedList.builder(
        padding: EdgeInsets.zero,
        itemCount: screens.length,
        itemBuilder: (context, index) => screens[index],
        itemScrollController: controller.scrollController,
      ),
    );
  }

  Widget renderBackground() {
    return Align(
      alignment: Alignment.center,
      child: Image.asset(
        'assets/images/background.jpg',
        width: ScreenUtil().screenWidth,
        opacity: const AlwaysStoppedAnimation(0.2),
        fit: BoxFit.cover,
        alignment: Alignment.topCenter,
      ),
    );
  }
}
