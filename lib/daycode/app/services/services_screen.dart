import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portofolio/daycode/app/services/service_list_mobile.dart';
import 'package:personal_portofolio/daycode/app/services/service_list_web.dart';
import 'package:personal_portofolio/daycode/core/widgets/d_text.dart';
import 'package:personal_portofolio/daycode/core/widgets/responsive.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DText(
          text: "SERVICES",
          type: DTextType.headlineLarge,
        ),
        DText(
          text: "Delivering fast, scalable, and beautiful Flutter apps — from idea to launch.",
          type: DTextType.bodyLarge,
        ),
        Responsive(
          mobile: ServiceListMobile(width: 0.9.sw, height: 235),
          tablet: ServiceListMobile(width: 0.6.sw, height: 245),
          desktop: ServiceListWeb(),
        ),
      ],
    );
  }
}