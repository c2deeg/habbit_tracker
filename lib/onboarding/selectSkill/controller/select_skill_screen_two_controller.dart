
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../core/constants/app_strings.dart';
import '../../../routes/routes.dart';

class SelectSkillScreenTwoController extends GetxController {
  RxBool isLoading = false.obs;


  var selectedValue = ''.obs;
  var skillExperienceValue = ''.obs;
  var relatedExperienceValue = ''.obs;
  var motivationLevelValue = ''.obs;
  var imagePath = 'assets/svg/iv_add.svg'.obs;

  void updateSelectedValue(String value) {
    selectedValue.value = value;
    updateImagePath(value);
  }
  void updateSkillExperienceValue(String value) {
    skillExperienceValue.value = value;
  }
  void updateRelatedExperienceValue(String value) {
    relatedExperienceValue.value = value;
  }
  void updateMotivationValue(String value) {
    motivationLevelValue.value = value;
  }

  void updateImagePath(String value) {
    switch (value) {
      case 'Guitar':
        imagePath.value = 'assets/svg/guitar.svg';
        break;
      case 'Electric Guitar':
        imagePath.value = 'assets/svg/electric_guitar.svg';
        break;
      case 'Bass Guitar':
        imagePath.value = 'assets/svg/bass_guitar.svg';
        break;
      case 'Violin':
        imagePath.value = 'assets/svg/ic_volin.svg';
        break;
      case 'Piano':
        imagePath.value = 'assets/svg/ic_piano.svg';
        break;
      case 'Custom':
        imagePath.value = 'assets/svg/custom.svg';
        break;
      default:
        imagePath.value = 'assets/svg/iv_add.svg';
    }
  }



}
