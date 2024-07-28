import 'package:flutter_music/onboarding/selectSkill/controller/syncing_screen_controller.dart';
import 'package:get/get.dart';

class SyncingScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SyncingScreenController>(() => SyncingScreenController());
  }
}
