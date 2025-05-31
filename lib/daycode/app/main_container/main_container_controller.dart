import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class MainContainerController extends GetxController {
  final activeIndex = 0.obs;
  ItemScrollController scrollController = ItemScrollController();
  ItemPositionsListener itemPositionsListener = ItemPositionsListener.create();

  void jumpTo(int index) {
    activeIndex.value = index;
    scrollController.scrollTo(
      index: index,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOutCubic,
      alignment: 0
    );
  }
}