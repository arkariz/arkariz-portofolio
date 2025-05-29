import 'package:flutter/material.dart';
import 'package:personal_portofolio/app/sections/contact/contact_screen_mobile.dart';
import 'package:personal_portofolio/app/sections/contact/contact_screen_tablet.dart';
import 'package:personal_portofolio/app/sections/contact/contact_screen_web.dart';
import 'package:personal_portofolio/core/widgets/responsive.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ContactScreenMobile(),
      tablet: ContactScreenTablet(),
      desktop: ContactScreenWeb(),
    );
  }
}