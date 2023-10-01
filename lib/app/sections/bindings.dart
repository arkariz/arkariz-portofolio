import 'package:get/get.dart';
import 'package:personal_portofolio/app/sections/main_container/main_container_controller.dart';

class MainContainerBinding implements Bindings {
@override
void dependencies() {
    Get.lazyPut<MainContainerController>(() => MainContainerController());
  }
}