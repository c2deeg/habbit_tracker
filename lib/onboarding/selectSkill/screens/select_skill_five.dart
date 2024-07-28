import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music/onboarding/selectSkill/controller/select_skill_screen_five_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import '../../../core/common_ui/CommonClass.dart';
import '../../../core/theme/app_theme.dart';
import '../../../routes/routes.dart';

class SelectSkillScreenFive extends GetView<SelectSkillScreenFiveController> {
  final List<String> days = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];
  final List<int> highlightedDays = [
    0,
    2,
    4
  ]; // Indices of days to highlight (Monday, Wednesday, Friday)

  SelectSkillScreenFive({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: SvgPicture.asset(
                          "assets/svg/ivback.svg",
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Align(
                      alignment: Alignment.center,
                      child: CommonClass.normalText(
                          text: "Set Up",
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: "rubikFont",
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Expanded(flex: 1, child: Container()),
                ],
              ),
              const SizedBox(height: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonClass.normalText(
                      text: "Scheduling",
                      color: Colors.white,
                      fontSize: 26,
                      fontFamily: "rubikSemiBold",
                      fontWeight: FontWeight.w600),
                  const SizedBox(height: 10),
                  CommonClass.normalText(
                      text: "When to practice",
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: "mediumFont",
                      fontWeight: FontWeight.w400),
                  const SizedBox(height: 5),
                  CommonClass.normalText(
                      text:
                          "These are days your most confident you want to develop your skill.",
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: "regularFont",
                      fontWeight: FontWeight.w400),
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      CommonClass.normalText(
                          text: "App Settings",
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: "mediumFont",
                          fontWeight: FontWeight.w500),
                      const SizedBox(width: 5),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      CommonClass.normalText(
                          text: "Practice Reminders",
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: "mediumFont",
                          fontWeight: FontWeight.w500),
                      const Spacer(),
                    /*  Obx(()=>
                          FlutterSwitch(
                            activeColor: Colors.green,
                            width: 45.0,
                            height: 25.0,
                            toggleSize: 45.0,
                            value: controller.isSwitched.value,
                            borderRadius: 30.0,
                            showOnOff: controller.isSwitched.value,
                            onToggle: (val) {
                              controller.toggleSwitch(val);
                            },
                          ),
                      ),*/
                      Obx(() => Transform.scale(
                        scaleX: 0.9,
                        scaleY: 0.7,
                        child: CupertinoSwitch(
                          activeColor:  Colors.green,
                          thumbColor: Colors.black,
                          trackColor: Colors.white,
                          value: controller.isSwitched.value,
                          onChanged: (val) {
                            controller.isSwitched.value=val;
                          },
                        ),
                      ),
                      ),
                    ],
                  ),
                  SizedBox(height: 35.h),
                  CommonClass.normalText(
                      text: "Preferred Practice Days",
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: "mediumFont",
                      fontWeight: FontWeight.w500),
                ],
              ),
              SizedBox(height: 40.h),
              SizedBox(
                height: 40,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: days.length,
                  itemBuilder: (BuildContext context, int index) {
                    bool isHighlighted = highlightedDays.contains(index);

                    return Container(
                      decoration: BoxDecoration(
                        color: isHighlighted
                            ? AppTheme.yellow
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      width: 45,
                      margin: const EdgeInsets.all(5),
                      child: Center(
                        child: Text(
                          days[index],
                          style: TextStyle(
                              color:
                                  isHighlighted ? Colors.black : Colors.white,
                              fontSize: 16),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  CommonClass.normalText(
                      text: "Preferred Practice time",
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: "mediumFont",
                      fontWeight: FontWeight.w500),
                  const Spacer(),
                  Obx(() => ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        // Adjust the radius as needed
                        child: Container(
                          height: 30.h,
                          width: 125, // Set your desired width here
                          color: AppTheme.surfaceBlack,
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                _showPracticeTimePopup(context);
                              },
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    controller.practiceTimeValue.value,
                                    style: const TextStyle(
                                        fontSize: 13,
                                        color: Colors.white,
                                        fontFamily: 'mediumFont',
                                        fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.center,
                                  ),
                                  const Spacer(),
                                  const ImageIcon(
                                      color: Colors.white,
                                      size: 18,
                                      AssetImage("assets/svg/dd_down.png")),
                                  SizedBox(
                                    width: 10.w,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ))
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Get.toNamed(Routes.syncing);
                    },
                    highlightColor: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppTheme.yellow,
                          borderRadius: BorderRadius.circular(30)),
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      height: 50,
                      width: MediaQuery.of(context).size.width - 250,
                      child: controller.isLoading.value
                          ? const CircularProgressIndicator(color: Colors.black)
                          : CommonClass.normalText(
                              text: "Next",
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: "regularFont",
                              fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonClass.normalText(
                        text: "Progress",
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: "mediumFont",
                        fontWeight: FontWeight.w400),
                    CommonClass.normalText(
                        text: "5/5",
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: "mediumFont",
                        fontWeight: FontWeight.w400),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 8, left: 8, bottom: 50),
                child: LinearProgressIndicator(
                  backgroundColor: AppTheme.lightBlack,
                  valueColor: AlwaysStoppedAnimation<Color>(AppTheme.yellow),
                  value: 0.97,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showPracticeTimePopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color(0xFF1C1B1E),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          titlePadding: const EdgeInsets.all(0),
          contentPadding: const EdgeInsets.all(0),
          content: Container(
            padding: const EdgeInsets.all(5),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: IconButton(
                            icon: const Icon(Icons.close, color: Colors.white),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Align(
                          alignment: Alignment.center,
                          child: CommonClass.normalText(
                              text: "Practice Time",
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: "rubikFont",
                              fontWeight: FontWeight.w600)),
                    ),
                    Expanded(flex: 1, child: Container()),
                  ],
                ),

                const Divider(color: Colors.transparent),
                _buildRadioListTile('Morning', context),
                _buildRadioListTile('Afternoon', context),
                _buildRadioListTile('Evening', context),
                _buildRadioListTile('Night', context),
                _buildRadioListTile('All day', context),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildRadioListTile(String title, BuildContext dialogContext) {
    return SizedBox(
      width: double.infinity,
      height: 45.h,
      child: Obx(
        () => RadioListTile(
          value: title,
          groupValue: controller.practiceTimeValue.value,
          onChanged: (value) async {
            controller.updatePracticeTimeValue(value!);

            // Give Flutter time to update the UI
            await Future.delayed(const Duration(milliseconds: 100));

            // Introduce a 1-second delay before dismissing the dialog
            await Future.delayed(const Duration(seconds: 1));

            Navigator.of(dialogContext).pop(); // Dismiss the dialog
          },
          title: Text(title, style: const TextStyle(color: Colors.white,fontFamily: 'regularFont',fontSize: 13),),
          activeColor: AppTheme.yellow,
          controlAffinity: ListTileControlAffinity.trailing,
        ),
      ),
    );
  }
}
