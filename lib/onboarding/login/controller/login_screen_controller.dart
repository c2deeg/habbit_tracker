
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../core/constants/app_strings.dart';
import '../../../routes/routes.dart';

class LoginScreenController extends GetxController {

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
  RxBool passwordEye = true.obs;
  bool disable = true;

  var isButtonEnabled = false.obs;

  void _validateFields() {
    isButtonEnabled.value = emailController.text.isNotEmpty && passwordController.text.isNotEmpty;
  }


  @override
  void onInit() {
    super.onInit();
    emailController.addListener(_validateFields);
    passwordController.addListener(_validateFields);
  }



  // String? valLoginEmail(String value) {
  //   if (value.isEmpty) {
  //     return 'Enter a email';
  //   }
  //   else if(GetUtils.isEmail(value)){
  //     return '';
  //   }
  //   else {
  //     return null;
  //   }
  // }

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
      loginApi();
    }
  }

/*  isValid() {

    if (emailController.text.isEmpty && passwordController.text.isEmpty) {
      emailErrorMessage.value = AppStrings.emailError.tr;
      passwordErrorMessage.value = AppStrings.passwordError.tr;
      passwordError.value = true;
      emailError.value = true;
      return false;
    } else if (emailController.text.isEmpty||!GetUtils.isEmail(emailController.text)) {
      emailErrorMessage.value = AppStrings.emailError.tr;
      emailError.value = true;
      return false;
    }else if(passwordController.text.isEmpty){
      passwordErrorMessage.value = AppStrings.passwordError.tr;
      passwordError.value = true;
      return false;
    }

    // else if (password.length < 8) {
    //   passwordErrorMessage.value = ErrorMessages.passwordIsEmpty;
    //   passwordError.value = true;
    // return false;
    // }
    else {
      emailErrorMessage.value = "";
      passwordErrorMessage.value = "";
      passwordError.value = false;
      emailError.value = false;
      Get.toNamed(Routes.dashboard);
      return true;
      // loginApi();
    }

  }*/

  Future<void> loginApi() async {
    Map<String, dynamic> dataBody = {
      "email": emailController.text,
      "password": passwordController.text,
    };

    // Login? response = await authProvider.loginRequest(body: dataBody);

    isLoading.value = false;

    // if ((response?.code ?? 0) == 201) {
    //   Prefs.write(Prefs.email, emailController.text ?? "");
    //   Prefs.write(Prefs.TOKEN, response?.accessToken);
    //   goToDashboard();
    // } else if ((response?.code ?? 0) == 400) {
    //   resendOtpApi();
    // } else {
    //   print("error");
    // }
  }

  goToDashboard() {
    Get.offNamed(Routes.dashboard);
  }

  goToOtpVerificationScreen() {
    // var arguments = SignupToOtpModel(
    //     email: emailController.text, password: passwordController.text);
    // Get.toNamed(Routes.otpVerifyScreen,
    //     arguments: {GetArgumentConstants.signupToOtpModel.tr: arguments});
  }

  // resendOtpApi() async {
  //   Map<String, dynamic> dataBody = {
  //     "email": emailController.text,
  //   };
  //
  //   isLoading.value = true;
  //
  //   OtpVerificationModel? response =
  //       await authProvider.resendOTPRequest(body: dataBody);
  //
  //   isLoading.value = false;
  //   bool status = response?.status ?? false;
  //   String data = response?.data ?? "";
  //   if (status) {
  //     goToOtpVerificationScreen();
  //     commonSnackBar(
  //         title: AppStrings.success, message: response?.message ?? "");
  //   } else {
  //     showCommonAlertSingleButtonDialog(
  //         title: AppStrings.error, subHeader: response?.message ?? "");
  //   }
  // }

  onPressCustomInkwell() {
    FocusManager.instance.primaryFocus?.unfocus();
    isCheckValidation.value = false;
  }
}
