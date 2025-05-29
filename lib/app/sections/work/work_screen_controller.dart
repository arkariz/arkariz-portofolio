import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portofolio/core/models/services.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class WorkScreenController extends GetxController {
  final scrollController = ItemScrollController();
  final scrollPosition = 0.obs;

  void moveBack() {
    if (scrollPosition.value == 0) return;
    scrollPosition.value--;
    scrollController.scrollTo(
      index: scrollPosition.value,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOutCubic,
      alignment: 0
    );
  }

  void moveForward() {
    if (scrollPosition.value == services.length - 1) return;
    scrollPosition.value++;
    scrollController.scrollTo(
      index: scrollPosition.value,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOutCubic,
      alignment: 0
    );
  }

  final services = [
    Services(
      icon: "icons/branding.svg",
      name: "Branding",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent mi nisi, placerat a rhoncus nec, dapibus eu metus.",
      tool: [
        "Photoshop",
        "Illustrator",
        "Figma",
      ],
    ),
    Services(
      icon: "icons/developer.svg",
      name: "Full Stack Developer",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent mi nisi, placerat a rhoncus nec, dapibus eu metus.",
      tool: [
        "Flutter",
        "Dart",
        "Firebase",
      ],
    ),
    Services(
      icon: "icons/product.svg",
      name: "Product Designer",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent mi nisi, placerat a rhoncus nec, dapibus eu metus.",
      tool: [
        "Figma",
        "Adobe XD",
        "Photoshop",
      ],
    ),
  ].obs;
}
