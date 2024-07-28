import 'package:get/get.dart';

import '../controller/select_skill_screen_five_controller.dart';

class SelectSkillScreenFiveBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SelectSkillScreenFiveController>(
        () => SelectSkillScreenFiveController());
  }
}
