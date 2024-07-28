import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/common_ui/CommonClass.dart';
import '../../../core/theme/app_theme.dart';
import '../../../routes/routes.dart';
import '../controller/select_skill_screen_controller.dart';

class SelectSkillScreen extends GetView<SelectSkillScreenController> {
  const SelectSkillScreen({super.key});

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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CommonClass.normalText(
                      text: "Select your skill",
                      color: Colors.white,
                      fontSize: 26,
                      fontFamily: "rubikSemiBold",
                      fontWeight: FontWeight.w600),
                  SizedBox(
                    height: 10.h,
                  ),
                  CommonClass.normalText(
                      text: "What are you trying to learn to do?",
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: "mediumFont",
                      fontWeight: FontWeight.w400),
                  SizedBox(
                    height: 5.h,
                  ),
                  CommonClass.normalText(
                      text:
                          "See below for the exercises we have available for you to track",
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: "regularFont",
                      fontWeight: FontWeight.w400),
                  SizedBox(
                    height: 20.h,
                  ),
                  Obx(() => Visibility(
                        visible: controller.isVisible.value,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                              10.0), // Adjust the radius as needed
                          child: Container(
                            height: 60.h,
                            color: AppTheme.surfaceBlack,
                            child: Center(
                              child: GestureDetector(
                                onTap: () {
                                  _showPopup(context);
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    const Expanded(
                                      flex: 1,
                                      child: Text(
                                        '',
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        controller.selectedValue.value,
                                        style: const TextStyle(
                                            fontSize: 16, color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    const Spacer(),
                                    const ImageIcon(
                                        color: Colors.white,
                                        size: 18,
                                        AssetImage("assets/svg/dd_down.png")),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        _showPopup(context);
                      },
                      child: Center(
                        child: Obx(() => SvgPicture.asset(
                              controller.imagePath.value,
                              height: controller.imagePath.value ==
                                      "assets/svg/iv_add.svg"
                                  ? 80.h
                                  : 180.h,
                            )),
                      ),
                    ),

                    /*
                    GestureDetector(
                      onTap: () {
                        _showPopup(context);
                      },
                      child: Center(
                        child: SvgPicture.asset(
                          "assets/svg/iv_add.svg",
                        ),
                      ),
                    ),
        */
                    SizedBox(
                      height: 50.h,
                    ),
                    Obx(
                      () => Visibility(
                        visible: !controller.isVisible.value,
                        child: CommonClass.normalText(
                            text: "Add Exercise",
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: "mediumFont",
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                  ],
                ),
              ),
              Obx(
                () => Visibility(
                  visible: controller.imagePath.value == "assets/svg/iv_add.svg"
                      ? false
                      : true,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.toNamed(Routes.selectSkillTwo);
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
                ),
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
                        text: "1/5",
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
                  value: 0.2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showPopup(BuildContext context) {
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
                  _buildRadioListTile('Guitar', context),
                  _buildRadioListTile('Electric Guitar', context),
                  _buildRadioListTile('Bass Guitar', context),
                  _buildRadioListTile('Violin', context),
                  _buildRadioListTile('Piano', context),
                  _buildRadioListTile('Trumpet', context),
                  _buildRadioListTile('Drums', context),
                  _buildRadioListTile('Cello', context),
                  _buildRadioListTile('Custom', context),
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
          controller.updateSelectedValue(value!, true);
          Navigator.of(dialogContext).pop(); // Dismiss the dialog
        },
        title: Text(title, style: const TextStyle(color: Colors.white)),
        activeColor: AppTheme.yellow,
        controlAffinity: ListTileControlAffinity.trailing,
      ),
    );
  }
}
