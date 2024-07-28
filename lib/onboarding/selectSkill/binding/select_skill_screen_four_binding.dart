import 'package:flutter_music/onboarding/selectSkill/controller/select_skill_screen_three_controller.dart';
import 'package:get/get.dart';

import '../controller/select_skill_screen_four_controller.dart';

class SelectSkillScreenFourBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SelectSkillScreenFourController>(
        () => SelectSkillScreenFourController());
  }
}
