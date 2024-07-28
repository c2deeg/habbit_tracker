import 'package:flutter_music/onboarding/selectSkill/controller/select_skill_screen_two_controller.dart';
import 'package:get/get.dart';

import '../controller/select_skill_screen_controller.dart';

class SelectSkillScreenTwoBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SelectSkillScreenTwoController>(() => SelectSkillScreenTwoController());
  }
}
