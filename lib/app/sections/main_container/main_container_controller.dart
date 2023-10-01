import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class MainContainerController extends GetxController {
  ItemScrollController scrollController = ItemScrollController();

  void jumpTo(int index) => scrollController.scrollTo(
    index: index,
    duration: const Duration(seconds: 3),
    curve: Curves.easeInOutCubic,
    alignment: 0
  );
}