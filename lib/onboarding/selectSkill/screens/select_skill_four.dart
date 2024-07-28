
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/common_ui/CommonClass.dart';
import '../../../core/theme/app_theme.dart';
import '../../../routes/routes.dart';
import '../controller/select_skill_screen_three_controller.dart';

class SelectSkillScreenFour extends GetView<SelectSkillScreenThreeController> {
  const SelectSkillScreenFour({super.key});

  @override
  Widget build(BuildContext context) {
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
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(bottom: 20),
                  physics: const ClampingScrollPhysics(),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CommonClass.normalText(
                              text: "Your Megastone",
                              color: Colors.white,
                              fontSize: 26,
                              fontFamily: "rubikSemiBold",
                              fontWeight: FontWeight.w600),
                          SizedBox(
                            height: 10.h,
                          ),
                          CommonClass.normalText(
                              text: "Your significant target  ",
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: "mediumFont",
                              fontWeight: FontWeight.w400),
                          SizedBox(
                            height: 5.h,
                          ),
                          CommonClass.normalText(
                              text:
                                  "This is a sizeable minimum amount of time you want to invest into a new skill.",
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
                                  text: "Megastone",
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: "mediumFont",
                                  fontWeight: FontWeight.w500),
                              SizedBox(
                                width: 5.w,
                              ),
                              CommonClass.normalText(
                                  text: "(hours)",
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
                                width: 40.w,
                              ),
                              SizedBox(
                                width: 95.w,
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
                                width: 40.w,
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
                            height: 30.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              CommonClass.normalText(
                                  text: "Megastone completion",
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: "mediumFont",
                                  fontWeight: FontWeight.w500),
                            ],
                          ),

                        ],
                      ),
                      SizedBox(
                        height: 90.h,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Center(
                            child: CommonClass.normalText(
                                text: "5th August 2024",
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: "mediumFont",
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          CommonClass.normalText(
                              text: "5 Weeks",
                              color: Colors.white,
                              fontSize: 36,
                              fontFamily: "mediumFont",
                              fontWeight: FontWeight.w500),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Get.toNamed(Routes.selectSkillFive);

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
                        text: "4/5",
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
