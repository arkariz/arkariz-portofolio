import 'package:flutter/material.dart';
import 'package:personal_portofolio/app/sections/work/work_screen_web.dart';
import 'package:personal_portofolio/core/widgets/responsive.dart';

class WorkScreen extends StatelessWidget {
  const WorkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: SizedBox(),
      tablet: SizedBox(),
      desktop: WorkScreenWeb(),
    );
  }
}
