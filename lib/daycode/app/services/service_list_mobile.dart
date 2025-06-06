import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:personal_portofolio/daycode/app/services/service_item.dart';

class ServiceListMobile extends StatelessWidget {
  const ServiceListMobile({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: CarouselSlider(
        items: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: ServiceItem(
              icon: 'assets/icons/github.svg',
              title: "Cross-Platform App Development",
              description: "I build high-performance apps that work seamlessly on both Android and iOS — saving time, reducing cost, and delivering consistent user experiences across platforms.",
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ServiceItem(
              icon: 'assets/icons/github.svg',
              title: "UI/UX Implementation",
              description: "Pixel-perfect interfaces that match your design vision. I translate Figma or design mockups into smooth, responsive, and delightful Flutter interfaces — down to the last detail.",
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ServiceItem(
              icon: 'assets/icons/github.svg',
              title: "App Optimization & Maintenance",
              description: "Need to improve performance or scale your Flutter app? I help refactor, debug, and optimize apps for speed, stability, and long-term maintainability — using best practices and clean architecture.",
            ),
          ),
        ],
        options: CarouselOptions(
          height: height,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
        ),
      ),
    );
  }
}