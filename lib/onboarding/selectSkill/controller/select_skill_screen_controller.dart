
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../core/constants/app_strings.dart';
import '../../../routes/routes.dart';

class SelectSkillScreenController extends GetxController {
  RxBool isLoading = false.obs;
  TextEditingController customController = TextEditingController();


  var selectedValue = ''.obs;
  var isVisible = false.obs;
  var imagePath = 'assets/svg/iv_add.svg'.obs;

  void updateSelectedValue(String value, bool isVis) {
    selectedValue.value = value;
    isVisible.value = isVis;
    updateImagePath(value);
  }

  void updateImagePath(String value) {
    switch (value) {
      case 'Guitar':
        imagePath.value = 'assets/svg/electric_guitar.svg';
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
        case 'Trumpet':
        imagePath.value = 'assets/svg/ic_trumpet.svg';
        break;
        case 'Drums':
        imagePath.value = 'assets/svg/ic_drums.svg';
        break;
        case 'Cello':
        imagePath.value = 'assets/svg/ic_cellio.svg';
        break;
      case 'Custom':
        imagePath.value = 'assets/svg/ic_custom.svg';
        break;
      default:
        imagePath.value = 'assets/svg/iv_add.svg';
    }
  }

}
