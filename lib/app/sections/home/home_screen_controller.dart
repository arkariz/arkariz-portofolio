import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  RxBool isHoverProfilePicture = false.obs;
  RxDouble profilePictureOffset = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
    _startProfileAnimation();
  }

  void _startProfileAnimation() {
    // Animate profile picture up and down
    Future.doWhile(() async {
      await Future.delayed(const Duration(milliseconds: 1500));
      profilePictureOffset.value = 15;
      await Future.delayed(const Duration(milliseconds: 1500));
      profilePictureOffset.value = 0;
      return true; // Continue the animation loop
    });
  }
}