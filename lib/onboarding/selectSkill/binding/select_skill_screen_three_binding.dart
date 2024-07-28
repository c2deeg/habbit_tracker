import 'package:flutter_music/onboarding/selectSkill/controller/select_skill_screen_three_controller.dart';
import 'package:get/get.dart';

class SelectSkillScreenThreeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SelectSkillScreenThreeController>(
        () => SelectSkillScreenThreeController());
  }
}
