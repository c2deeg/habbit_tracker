
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../core/constants/app_strings.dart';
import '../../../routes/routes.dart';

class SyncingScreenController extends GetxController {
  RxBool isLoading = false.obs;


  var showLottie = true.obs;

  @override
  void onInit() {
    super.onInit();
    // Start the timer to change the state after 5 seconds
    Timer(const Duration(seconds: 5), () {
      showLottie.value = false;
    });
    Timer(const Duration(seconds: 10), () {
      Get.toNamed(Routes.dashboardScreen);
    });
  }



}
