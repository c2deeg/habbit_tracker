import 'package:get/get.dart';

import '../controller/forgot_pass_screen_controller.dart';

class ForgotPassScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgotPassScreenController>(() => ForgotPassScreenController());
  }
}
