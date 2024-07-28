
import 'package:flutter/material.dart';
import 'package:flutter_music/home/screens/home_view.dart';
import 'package:get/get.dart';
import 'home_view_controller.dart';

class DashboardController extends GetxController {
  DateTime? currentBackPressTime;
  Rx<int> selectedIndex = 0.obs;

  Widget getScreens(int index) {
      switch (index) {
        case 0:
          return    const HomeView();
        case 1:
          return    const HomeView();
        case 2:
          return    const HomeView();
        default:
          {
          return    const HomeView();
          }
      }
  }

  RxBool canPop = false.obs;
  bool onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null || now.difference(currentBackPressTime!) > const Duration(seconds: 2)) {
      currentBackPressTime = now;
      canPop.value=false;
      return false;
    }
    canPop.value=true;
    return true;
  }




  void onItemTapped(int index) {
    selectedIndex.value = index;
    WidgetsFlutterBinding.ensureInitialized();
      switch (index) {
        case 0:
          Get.lazyPut(() => HomeViewController());
          break;
        case 1:
          Get.lazyPut(() => HomeViewController());
          break;
        case 2:
          Get.lazyPut(() => HomeViewController());
          break;
      }
  }
}
