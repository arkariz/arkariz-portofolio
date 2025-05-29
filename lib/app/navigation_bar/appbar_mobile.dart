import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:personal_portofolio/app/sections/main_container/main_container_controller.dart';
import 'package:personal_portofolio/core/colors/colors.dart';
import 'package:personal_portofolio/core/widgets/custom_text.dart';

class AppbarMobile extends StatelessWidget {
  const AppbarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: EdgeInsets.only(
        top: 20.h,
        bottom: 5.h,
        left: 100.w,
        right: 100.w,
      ),
      decoration: BoxDecoration(
        color: theme.colorScheme.primary.withValues(alpha: 0.8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.6),
            spreadRadius: 15,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CustomText(text: "< Arkariz />", fontSize: h2),
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
          ),
        ],
      ),
    );
  }
}

class MobileDrawer extends GetView<MainContainerController> {
  const MobileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).colorScheme.primary,
        child: Column(
          children: [
            SizedBox(height: 50.h),
            DrawerItem(
              label: "Home",
              onTap: () {
                Navigator.pop(context);
                controller.jumpTo(0);
              },
            ),
            DrawerItem(
              label: "Work",
              onTap: () {
                Navigator.pop(context);
                controller.jumpTo(2);
              },
            ),
            DrawerItem(
              label: "Contact",
              onTap: () {
                Navigator.pop(context);
                controller.jumpTo(4);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerItem extends StatefulWidget {
  const DrawerItem({
    super.key,
    required this.label,
    required this.onTap,
  });

  final String label;
  final VoidCallback onTap;

  @override
  State<DrawerItem> createState() => _DrawerItemState();
}

class _DrawerItemState extends State<DrawerItem> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        setState(() => isHover = value);
      },
      onTap: widget.onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        decoration: BoxDecoration(
          gradient: isHover ? pinkpurple : null,
        ),
        child: CustomText(
          text: widget.label,
          fontSize: h3,
        ),
      ),
    );
  }
}
