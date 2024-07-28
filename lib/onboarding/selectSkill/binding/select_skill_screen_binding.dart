import 'package:get/get.dart';

import '../controller/select_skill_screen_controller.dart';

class SelectSkillScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SelectSkillScreenController>(() => SelectSkillScreenController());
  }
}
