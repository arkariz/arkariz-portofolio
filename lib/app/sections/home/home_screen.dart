import 'package:flutter/material.dart';
import 'package:personal_portofolio/app/sections/home/home_screen_web.dart';
import 'package:personal_portofolio/core/widgets/responsive.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: SizedBox(),
      tablet: SizedBox(),
      desktop: HomeScreenWeb(),
    );
  }
}