import 'package:flutter_music/home/controller/home_view_controller.dart';
import 'package:get/get.dart';

class DashboardBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomeViewController());
    Get.lazyPut(() => HomeViewController());
    Get.lazyPut(() => HomeViewController());
  }
}
