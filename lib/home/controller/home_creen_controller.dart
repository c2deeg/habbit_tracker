
import 'package:flutter/cupertino.dart';
import 'package:flutter_music/home/screens/home_screen.dart';
import 'package:get/get.dart';

import '../../../core/constants/app_strings.dart';
import '../../../routes/routes.dart';

class HomeScreenController extends GetxController {
  var selectedIndex = 0.obs;

  final List<Widget> children = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    // VideoListScreen(),

  ];
  void onItemTapped(int index) {
    selectedIndex.value = index;
  }


}
