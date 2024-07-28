import 'package:get/get.dart';

import '../controller/home_creen_controller.dart';

class HomeScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeScreenController>(() => HomeScreenController  ());
  }
}
