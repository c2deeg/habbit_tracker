import 'package:custom_pop_up_menu/custom_pop_up_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../core/common_ui/CommonClass.dart';
import '../../../core/theme/app_theme.dart';
import '../controller/home_creen_controller.dart';

class HomeScreen extends GetView<HomeScreenController> {
  HomeScreen({super.key});

  CustomPopupMenuController popUpController = CustomPopupMenuController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      body: Center(
        child: Obx(() => controller.children[controller.selectedIndex.value]),
      ),
      bottomNavigationBar: Container(
        height: 95,
        color: AppTheme.background,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.bottomCenter,
        child: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: AppTheme.background,
            textTheme: Theme.of(context).textTheme.copyWith(
                  bodySmall: TextStyle(color: Colors.white),
                ),
          ),
          child: Obx(() => BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                showSelectedLabels: true,
                showUnselectedLabels: true,
                selectedLabelStyle: const TextStyle(
                  fontSize: 12,
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.bold,
                ),
                selectedItemColor: Colors.white,
                unselectedItemColor: Color(0xffB2AEAE),
                onTap: controller.onItemTapped,
                currentIndex: controller.selectedIndex.value,
                items: [
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: SvgPicture.asset(
                        'assets/svg/chart.svg',
                        height: 25,
                        width: 25,
                        color: Color(0xffB2AEAE),
                      ),
                    ),
                    activeIcon: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: SvgPicture.asset(
                        'assets/svg/chart.svg',
                        height: 25,
                        width: 25,
                      ),
                    ),
                    label: 'Progress',
                  ),
                  BottomNavigationBarItem(
                    icon: CustomPopupMenu(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: SvgPicture.asset(
                          'assets/svg/vector.svg',
                          height: 25,
                          width: 25,
                          color: Color(0xffB2AEAE),
                        ),
                      ),
                      menuBuilder: _buildLongPressMenu,
                      barrierColor: Colors.transparent,
                      pressType: PressType.singleClick,
                      arrowColor: AppTheme.smallBoxGray,
                      arrowSize: 20,
                      horizontalMargin: 0,
                      verticalMargin: 0,
                      controller: popUpController,
                      menuOnChange: (value) {},
                      position: PreferredPosition.top,
                    ),
                    activeIcon: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: SvgPicture.asset(
                        'assets/svg/vector.svg',
                        height: 25,
                        width: 25,
                      ),
                    ),
                    label: 'Capture',
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: SvgPicture.asset(
                        'assets/svg/milestone.svg',
                        height: 25,
                        width: 25,
                        color: Color(0xffB2AEAE),
                      ),
                    ),
                    activeIcon: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: SvgPicture.asset(
                        'assets/svg/milestone.svg',
                        height: 25,
                        width: 25,
                      ),
                    ),
                    label: 'Milestone',
                  ),
                ],
              )),
        ),
      ),
    );
  }

  Widget _buildLongPressMenu() {
    return Container(
      height: 100,
      width: 180,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: AppTheme.smallBoxGray,
          borderRadius: BorderRadius.all(Radius.circular(24))),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                // controller.hideMenu();
                // Get.to(()=>ProgressTime());
              },
              child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/svg/watch.svg",
                        color: Colors.white,
                        height: 24,
                        width: 24,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      CommonClass.normalText(
                          text: "Time",
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: "regularFont",
                          fontWeight: FontWeight.w400)
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: AppTheme.mileStoneBg,
                      borderRadius: BorderRadius.all(Radius.circular(12)))),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                // controller.hideMenu();
                // Get.to(()=> CameraExampleHome());
              },
              child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/svg/vector.svg",
                        color: Colors.white,
                        height: 24,
                        width: 24,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      CommonClass.normalText(
                          text: "Video",
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: "regularFont",
                          fontWeight: FontWeight.w400)
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: AppTheme.mileStoneBg,
                      borderRadius: BorderRadius.all(Radius.circular(12)))),
            ),
          ),
        ],
      ),
    );
  }
}
