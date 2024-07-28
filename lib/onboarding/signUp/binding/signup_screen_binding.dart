import 'package:get/get.dart';

import '../controller/signup_screen_controller.dart';

class SignUpScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignupScreenController>(() => SignupScreenController());
  }
}
