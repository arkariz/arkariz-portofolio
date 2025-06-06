import 'package:flutter/material.dart';
import 'package:personal_portofolio/daycode/app/services/service_item.dart';

class ServiceListWeb extends StatelessWidget {
  const ServiceListWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 120),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 30,
        children: [
          Flexible(
            child: ServiceItem(
              icon: 'assets/icons/github.svg',
              title: "Cross-Platform App Development",
              description: "I build high-performance apps that work seamlessly on both Android and iOS — saving time, reducing cost, and delivering consistent user experiences across platforms.",
            ),
          ),
          Flexible(
            child: ServiceItem(
              icon: 'assets/icons/github.svg',
              title: "UI/UX Implementation",
              description: "Pixel-perfect interfaces that match your design vision. I translate Figma or design mockups into smooth, responsive, and delightful Flutter interfaces — down to the last detail.",
            ),
          ),
          Flexible(
            child: ServiceItem(
              icon: 'assets/icons/github.svg',
              title: "App Optimization & Maintenance",
              description: "Need to improve performance or scale your Flutter app? I help refactor, debug, and optimize apps for speed, stability, and long-term maintainability — using best practices and clean architecture.",
            ),
          ),
        ],
      ),
    );
  }
}