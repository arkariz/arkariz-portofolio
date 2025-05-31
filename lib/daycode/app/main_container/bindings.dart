import 'package:get/get.dart';
import 'package:personal_portofolio/daycode/app/landing/landing_controller.dart';
import 'package:personal_portofolio/daycode/app/main_container/main_container_controller.dart';

class MainContainerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LandingController>(() => LandingController());
    Get.lazyPut<MainContainerController>(() => MainContainerController());
  }
}