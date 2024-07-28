import 'package:get/get.dart';

import '../../../routes/routes.dart';


class SplashController extends GetxController{
  
  @override
  void onInit() {
    navigateToNext();
    super.onInit();
  }

  void navigateToNext() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.offNamed(Routes.loginScreen);
  }

}