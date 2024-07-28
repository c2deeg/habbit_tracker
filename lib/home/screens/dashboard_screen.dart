import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../controller/dashboard_controller.dart';


class DashboardScreen extends GetView<DashboardController> {
  const DashboardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => DashboardController());
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.black,
      body: Obx(
            ()=> PopScope(
          canPop: controller.canPop.value,
          onPopInvoked : (didPop){
            controller.onWillPop();
          },
          child: Obx(() => controller.getScreens(controller.selectedIndex.value)),
        ),
      ),
      bottomNavigationBar: Obx(
            () => Theme(
              data: ThemeData(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              child: BottomNavigationBar(
              backgroundColor: Colors.black,
              currentIndex: controller.selectedIndex.value,
              onTap: controller.onItemTapped,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white.withOpacity(0.50),
              selectedLabelStyle: const TextStyle(color: Colors.white, fontSize: 12),
              unselectedLabelStyle: TextStyle(color: Colors.red.withOpacity(0.50), fontSize: 12),
              items: [
                BottomNavigationBarItem(
                    icon: Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: SvgPicture.asset(
                          'assets/svg/chart.svg',
                          height: 25,
                          width: 25,
                          color: const Color(0xffB2AEAE),
                        )
                    ),
                    activeIcon: Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: SvgPicture.asset(
                        'assets/svg/chart.svg',
                        height: 25,
                        width: 25,
                      ),
                    ),
                    label: "Progress"
                ),
                BottomNavigationBarItem(
                    icon: Padding(
                        padding: const EdgeInsets.only(bottom:8),
                        child:  SvgPicture.asset(
                          'assets/svg/vector.svg',
                          height: 25,
                          width: 25,
                          color: const Color(0xffB2AEAE),
                        )
                    ),
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(bottom: 8),
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
                        padding: const EdgeInsets.only(bottom: 8),
                        child: SvgPicture.asset(
                          'assets/svg/milestone.svg',
                          height: 25,
                          width: 25,
                          color: const Color(0xffB2AEAE),
                        ),
                    ),
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: SvgPicture.asset(
                      'assets/svg/milestone.svg',
                      height: 25,
                      width: 25,
                    ),
                  ),
                  label: 'Milestone',
                ),
              ]
                      ),
            ),
      ),
    );
  }
}

