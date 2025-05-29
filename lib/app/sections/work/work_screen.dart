import 'package:flutter/material.dart';
import 'package:personal_portofolio/app/sections/work/work_screen_mobile.dart';
import 'package:personal_portofolio/app/sections/work/work_screen_tablet.dart';
import 'package:personal_portofolio/app/sections/work/work_screen_web.dart';
import 'package:personal_portofolio/core/widgets/responsive.dart';

class WorkScreen extends StatelessWidget {
  const WorkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: WorkScreenMobile(),
      tablet: WorkScreenTablet(),
      desktop: WorkScreenWeb(),
    );
  }
}
