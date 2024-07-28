import 'package:get/get.dart';

import '../controller/splashController.dart';

class SPlashBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(SplashController());

  }

}
