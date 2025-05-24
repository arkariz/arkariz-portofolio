import 'package:get/get.dart';
import 'package:personal_portofolio/app/sections/home/home_screen_controller.dart';
import 'package:personal_portofolio/app/sections/main_container/main_container_controller.dart';
import 'package:personal_portofolio/app/sections/work/work_screen_controller.dart';

class MainContainerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainContainerController>(() => MainContainerController());
    Get.lazyPut<HomeScreenController>(() => HomeScreenController());
    Get.lazyPut<WorkScreenController>(() => WorkScreenController());
  }
}