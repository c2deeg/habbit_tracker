
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../core/constants/app_strings.dart';
import '../../../routes/routes.dart';

class SelectSkillScreenFiveController extends GetxController {
  RxBool isLoading = false.obs;
  var isSwitched = false.obs;

  var  sessionLength = 1.obs;
  var  sessionWeek = 1.obs;
  var imagePath = 'assets/svg/iv_add.svg'.obs;
  final List<String> days = ["M", "T", "W", "T", "F", "S", "S"];
  final List<int> highlightedDays = [0, 2, 4];
  var practiceTimeValue = 'Select'.obs;


  void toggleSwitch(bool value) {
    isSwitched.value = value;
  }

  void updatePracticeTimeValue(String value) {
    practiceTimeValue.value = value;
  }


}
