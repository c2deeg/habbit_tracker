
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../core/constants/app_strings.dart';
import '../../../routes/routes.dart';

class ForgotPassScreenController extends GetxController {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  RxBool emailError = false.obs;
  RxBool isVisiblePassword = false.obs;
  RxBool passwordError = false.obs;
  RxString emailErrorMessage = AppStrings.emailError.tr.obs;
  RxString passwordErrorMessage = AppStrings.passwordError.tr.obs;
  var isCheckValidation = false.obs;
  RxBool isLoading = false.obs;
  bool passwordEye = true;
  bool disable = true;



}
