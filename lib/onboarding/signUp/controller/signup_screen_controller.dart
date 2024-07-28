import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../core/constants/app_strings.dart';

class SignupScreenController extends GetxController {
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  RxBool emailError = false.obs;
  RxBool isVisiblePassword = false.obs;
  RxBool passwordError = false.obs;
  RxString emailErrorMessage = AppStrings.emailError.tr.obs;
  RxString passwordErrorMessage = AppStrings.passwordError.tr.obs;
  var isCheckValidation = false.obs;
  RxBool isLoading = false.obs;
  RxBool passwordEye = true.obs;
  RxBool confirmPasswordEye = true.obs;
  bool disable = true;



  var isButtonEnabled = false.obs;

  void _validateFields() {
    isButtonEnabled.value = userNameController.text.isNotEmpty && emailController.text.isNotEmpty && passwordController.text.isNotEmpty && confirmPasswordController.text.isNotEmpty;
  }


  @override
  void onInit() {
    super.onInit();
    userNameController.addListener(_validateFields);
    emailController.addListener(_validateFields);
    passwordController.addListener(_validateFields);
    confirmPasswordController.addListener(_validateFields);
  }

  isValidLogin() {
    /*goToDashboard();*/
    if (emailController.text.isEmpty && passwordController.text.isEmpty) {
      emailErrorMessage.value = AppStrings.emailError.tr;
      passwordErrorMessage.value = AppStrings.passwordError.tr;
      emailError.value = true;
      passwordError.value = true;
    } else if (!GetUtils.isEmail(emailController.text)) {
      emailErrorMessage.value = AppStrings.emailError.tr;
      emailError.value = true;
    } else if (passwordController.text.isEmpty) {
      passwordError.value = true;
      passwordErrorMessage.value = AppStrings.passwordError.tr;
    } else if (passwordController.text.length < 8) {
      passwordError.value = true;
      passwordErrorMessage.value = AppStrings.passwordError.tr;
    } else {
      isLoading.value = true;
      emailError.value = false;
      passwordError.value = false;
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }
}
