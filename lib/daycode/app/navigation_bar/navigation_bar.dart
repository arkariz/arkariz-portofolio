import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:personal_portofolio/daycode/app/navigation_bar/navigation_bar_item.dart';
import 'package:personal_portofolio/daycode/app/main_container/main_container_controller.dart';

class DNavigationBar extends GetView<MainContainerController> {
  const DNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Obx(() =>Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          NavigationBarItem(
            label: "HOME",
            onTapButton: () => controller.jumpTo(0),
            isActive: controller.activeIndex.value == 0,
          ),
          NavigationBarItem(
            label: "SERVICES",
            onTapButton: () => controller.jumpTo(2),
            isActive: controller.activeIndex.value == 2,
          ),
          NavigationBarItem(
            label: "CONTACT",
            onTapButton: () => controller.jumpTo(4),
            isActive: controller.activeIndex.value == 4,
          ),
        ],
      )),
    );
  }
}