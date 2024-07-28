import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/common_ui/CommonClass.dart';
import '../../../core/theme/app_theme.dart';
import '../../../routes/routes.dart';
import '../controller/select_skill_screen_three_controller.dart';

class SelectSkillScreenThree extends GetView<SelectSkillScreenThreeController> {
  const SelectSkillScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppTheme.background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20.h,
              ),
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
                            fontWeight: FontWeight.w600)),
                  ),
                  Expanded(flex: 1, child: Container()),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonClass.normalText(
                      text: "Your Practice",
                      color: Colors.white,
                      fontSize: 26,
                      fontFamily: "rubikSemiBold",
                      fontWeight: FontWeight.w600),
                  SizedBox(
                    height: 10.h,
                  ),
                  CommonClass.normalText(
                      text: "Enter your desired practice amount",
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: "mediumFont",
                      fontWeight: FontWeight.w400),
                  SizedBox(
                    height: 5.h,
                  ),
                  CommonClass.normalText(
                      text:
                          "We have suggested session length and consistency based on your provided experience.",
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: "regularFont",
                      fontWeight: FontWeight.w400),
                  SizedBox(
                    height: 40.h,
                  ),
                  Row(
                    children: [
                      const ImageIcon(
                          color: Colors.white,
                          size: 18,
                          AssetImage("assets/svg/ictime.png")),
                      SizedBox(
                        width: 5.w,
                      ),
                      CommonClass.normalText(
                          text: "Session Length",
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: "mediumFont",
                          fontWeight: FontWeight.w500),
                      SizedBox(
                        width: 5.w,
                      ),
                      CommonClass.normalText(
                          text: "(minutes)",
                          color: AppTheme.lightBlue,
                          fontSize: 14,
                          fontFamily: "mediumFont",
                          fontWeight: FontWeight.w500),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (controller.sessionLength.value > 0) {
                            // Prevent negative values
                            controller.sessionLength.value--;
                          }
                        },
                        child: SizedBox(
                          height: 40,
                          width: 40,
                          child: Image.asset(
                            "assets/svg/iv_minus.png",
                            // No need to specify color to avoid tinting
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30.w,
                      ),

                      SizedBox(
                        width: 110.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Obx(() => CommonClass.normalText(
                                  text: controller.sessionLength.value.toString(),
                                  color: Colors.white,
                                  fontSize: 80,
                                  fontFamily: "mediumFont",
                                  fontWeight: FontWeight.w800,
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.sessionLength.value++;
                        },
                        child: SizedBox(
                          height: 40,
                          width: 40,
                          child: Image.asset(
                            "assets/svg/ic_plus.png",
                            // No need to specify color to avoid tinting
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      const ImageIcon(
                          color: Colors.white,
                          size: 18,
                          AssetImage("assets/svg/iv_sessions.png")),
                      SizedBox(
                        width: 10.w,
                      ),
                      CommonClass.normalText(
                          text: "Sessions a week",
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: "mediumFont",
                          fontWeight: FontWeight.w500),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (controller.sessionWeek.value > 0) {
                            // Prevent negative values
                            controller.sessionWeek.value--;
                          }
                        },
                        child: SizedBox(
                          height: 40,
                          width: 40,
                          child: Image.asset(
                            "assets/svg/iv_minus.png",
                            // No need to specify color to avoid tinting
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      SizedBox(
                        width: 110.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Obx(() => CommonClass.normalText(
                                  text: controller.sessionWeek.value.toString(),
                                  color: Colors.white,
                                  fontSize: 80,
                                  fontFamily: "mediumFont",
                                  fontWeight: FontWeight.w800,
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      GestureDetector(
                        onTap: () {
                          if (controller.sessionWeek.value <= 6) {
                            controller.sessionWeek.value++;
                          }

                        },
                        child: SizedBox(
                          height: 40,
                          width: 40,
                          child: Image.asset(
                            "assets/svg/ic_plus.png",
                            // No need to specify color to avoid tinting
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Get.toNamed(Routes.selectSkillFour);

                    },
                    highlightColor: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppTheme.yellow,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30))),
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(left: 16, right: 16),
                      height: 50,
                      width: MediaQuery.sizeOf(context).width - 250,
                      child: controller.isLoading.value
                          ? const CircularProgressIndicator(
                              color: Colors.black,
                            )
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
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
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
                        text: "3/5",
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: "mediumFont",
                        fontWeight: FontWeight.w400)
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 8, bottom: 50),
                child: LinearProgressIndicator(
                  backgroundColor: AppTheme.lightBlack,
                  color: AppTheme.yellow,
                  value: 0.6,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showGenderPopup(BuildContext context) {
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
          content: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Select what you are tracking',
                            style: TextStyle(color: Colors.white)),
                      ),
                      IconButton(
                        icon: const Icon(Icons.close, color: Colors.white),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                  const Divider(color: Colors.transparent),
                  _buildRadioListTile('Male', context),
                  _buildRadioListTile('Female', context),
                  _buildRadioListTile('Other', context),
                  _buildRadioListTile('Prefer not to say', context),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildRadioListTile(String title, BuildContext dialogContext) {
    return SizedBox(
      width: double.infinity,
      child: RadioListTile(
        value: title,
        groupValue: controller.selectedValue.value,
        onChanged: (value) {
          controller.updateSelectedValue(value!);
          Navigator.of(dialogContext).pop(); // Dismiss the dialog
        },
        title: Text(title, style: const TextStyle(color: Colors.white)),
        activeColor: AppTheme.yellow,
        controlAffinity: ListTileControlAffinity.trailing,
      ),
    );
  }
}
