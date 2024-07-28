import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../core/common_ui/CommonClass.dart';
import '../../../core/theme/app_theme.dart';
import '../../../routes/routes.dart';
import '../controller/syncing_screen_controller.dart';

class Syncing extends GetView<SyncingScreenController> {
  const Syncing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Obx(() => SizedBox(
                  height: 70,
                  width: 70,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: controller.showLottie.value
                        ? Lottie.asset('assets/anim/anim.json')
                        : Image.asset(
                            'assets/svg/ic_download.png'), // Replace with your image path
                  ),
                )),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
              child: Obx(() => CommonClass.normalText(
                  text: controller.showLottie.value ? 'Syncing' : 'Done!',
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: "regularFont",
                  fontWeight: FontWeight.w500))),
        ],
      ),
    );
  }
}
