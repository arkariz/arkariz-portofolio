import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:personal_portofolio/app/navigation_bar/appbar_desktop.dart';
import 'package:personal_portofolio/app/navigation_bar/appbar_mobile.dart';
import 'package:personal_portofolio/app/navigation_bar/appbar_tablet.dart';
import 'package:personal_portofolio/app/sections/contact/contact_screen.dart';
import 'package:personal_portofolio/app/sections/home/home_screen.dart';
import 'package:personal_portofolio/app/sections/work/work_screen.dart';
import 'package:personal_portofolio/app/sections/main_container/main_container_controller.dart';
import 'package:personal_portofolio/core/widgets/responsive.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class MainContainerScreen extends GetView<MainContainerController> {
  MainContainerScreen({super.key});

  final screens = [
    const HomeScreen(),
    SizedBox(height: 0.2.sh),
    const WorkScreen(),
    SizedBox(height: 0.2.sh),
    const ContactScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(Responsive.isDesktop(context) ? 200 : 100),
        child: const Responsive(
          mobile: AppbarMobile(),
          tablet: AppbarTablet(),
          desktop: AppbarDesktop()
        ),
      ),
      endDrawer: const Responsive(
        mobile: MobileDrawer(),
        tablet: SizedBox(),
        desktop: SizedBox(),
      ),
      body: Stack(
        children: [
          renderBackground(),
          Responsive(
            mobile: renderScreens(horizontalPadding: 0.05.sw, verticalPadding: 0.15.sh),
            tablet: renderScreens(horizontalPadding: 0.05.sw, verticalPadding: 0.15.sh),
            desktop: renderScreens(horizontalPadding: 0.15.sw, verticalPadding: 0.15.sh),
          ),
        ],
      ),
    );
  }

  Widget renderScreens({
    required double horizontalPadding,
    required double verticalPadding,
  }) {
    return ScrollablePositionedList.builder(
      padding: EdgeInsets.zero,
      itemCount: screens.length,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
        child: screens[index],
      ),
      itemScrollController: controller.scrollController,
    );
  }

  Widget renderBackground() {
    return SizedBox.expand(
      child: ShaderMask(
        shaderCallback: (rect) {
          return LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black, Colors.black.withValues(alpha: 0.1)],
            stops: const [0.7, 1.0],
          ).createShader(rect);
        },
        blendMode: BlendMode.dstIn,
        child: Image.asset(
          'assets/images/background.jpg',
          opacity: const AlwaysStoppedAnimation(0.2),
          fit: BoxFit.cover,
          repeat: ImageRepeat.repeatY,
        ),
      ),
    );
  }
}
