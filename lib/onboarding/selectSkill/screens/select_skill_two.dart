import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/common_ui/CommonClass.dart';
import '../../../core/theme/app_theme.dart';
import '../../../routes/routes.dart';
import '../controller/select_skill_screen_two_controller.dart';

class SelectSkillScreenTwo extends GetView<SelectSkillScreenTwoController> {
  const SelectSkillScreenTwo({super.key});

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
                  padding: const EdgeInsets.only(bottom: 5),
                  physics: const ClampingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CommonClass.normalText(
                          text: "Your Background",
                          color: Colors.white,
                          fontSize: 26,
                          fontFamily: "rubikSemiBold",
                          fontWeight: FontWeight.w600),
                      SizedBox(
                        height: 10.h,
                      ),
                      CommonClass.normalText(
                          text: "Tell us about yourself.",
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: "mediumFont",
                          fontWeight: FontWeight.w400),
                      SizedBox(
                        height: 5.h,
                      ),
                      CommonClass.normalText(
                          text:
                              "This helps us create better and bespoke experience",
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: "regularFont",
                          fontWeight: FontWeight.w400),
                      SizedBox(
                        height: 20.h,
                      ),
                      Obx(() => GestureDetector(
                        onTap: () {
                          _showGenderPopup(context);
                        },
                        child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              // Adjust the radius as needed
                              child: Container(
                                height: 60.h,
                                color: AppTheme.surfaceBlack,
                                child: Center(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Text(
                                        'Select your sex ${controller.selectedValue.value}',
                                        style: const TextStyle(
                                            fontSize: 13,
                                            color: Colors.white,
                                            fontFamily: 'rubikFont',
                                            fontWeight: FontWeight.w400),
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
                      )),
                      SizedBox(
                        height: 10.h,
                      ),
                      Obx(() => GestureDetector(
                        onTap: () {
                          _showSkillExperiencePopup(context);
                        },
                        child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              // Adjust the radius as needed
                              child: Container(
                                height: 60.h,
                                color: AppTheme.surfaceBlack,
                                child: Center(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Text(
                                        'Skill experience: ${controller.skillExperienceValue.value}',
                                        style: const TextStyle(
                                            fontSize: 13,
                                            color: Colors.white,
                                            fontFamily: 'rubikFont',
                                            fontWeight: FontWeight.w400),
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
                      )),
                      SizedBox(
                        height: 10.h,
                      ),
                      Obx(() => GestureDetector(
                        onTap: () {
                          _showRelatedExperiencePopup(context);
                        },
                        child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              // Adjust the radius as needed
                              child: Container(
                                height: 60.h,
                                color: AppTheme.surfaceBlack,
                                child: Center(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Text(
                                        'Related skill experience ${controller.relatedExperienceValue.value}',
                                        style: const TextStyle(
                                            fontSize: 13,
                                            color: Colors.white,
                                            fontFamily: 'rubikFont',
                                            fontWeight: FontWeight.w400),
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
                      )),
                      SizedBox(
                        height: 10.h,
                      ),
                      Obx(() => GestureDetector(
                        onTap: () {
                          _showRelatedExperiencePopup(context);
                        },
                        child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              // Adjust the radius as needed
                              child: Container(
                                height: 60.h,
                                color: AppTheme.surfaceBlack,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Expanded(
                                      child: Text(
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        'What is your related skill? (Optional) ${controller.relatedExperienceValue.value}',
                                        style: const TextStyle(
                                            fontSize: 13,
                                            color: Colors.white38,
                                            fontFamily: 'rubikFont',
                                            fontWeight: FontWeight.w400),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
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
                      )),
                      SizedBox(
                        height: 10.h,
                      ),
                      Obx(() => GestureDetector(
                        onTap: () {
                          _showLevelMotivationPopup(context);
                        },
                        child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              // Adjust the radius as needed
                              child: Container(
                                height: 60.h,
                                color: AppTheme.surfaceBlack,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Text(
                                      'Level of motivation ${controller.motivationLevelValue.value}',
                                      style: const TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontFamily: 'rubikFont',
                                          fontWeight: FontWeight.w400),
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
                      )),
                      SizedBox(
                        height: 10.h,
                      ),
                      Obx(() => ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            // Adjust the radius as needed
                            child: Container(
                              height: 60.h,
                              color: AppTheme.surfaceBlack,
                              child: Center(
                                child: GestureDetector(
                                  onTap: () {
                                    // _showGenderPopup(context);
                                  },
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Text(
                                        'Age ${controller.selectedValue.value}',
                                        style: const TextStyle(
                                            fontSize: 13,
                                            color: Colors.white,
                                            fontFamily: 'rubikFont',
                                            fontWeight: FontWeight.w400),
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
                          )),
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
                      Get.toNamed(Routes.selectSkillThree);
                    },
                    highlightColor: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppTheme.yellow,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30))),
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(left: 16, right: 16,top: 10),
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
                        text: "2/5",
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
                  value: 0.4,
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
                                text: "Select your sex",
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: "rubikFont",
                                fontWeight: FontWeight.w400)),
                      ),
                      Expanded(flex: 1, child: Container()),
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
      height: 40 .h,
      child: RadioListTile(
        value: title,
        contentPadding: const EdgeInsets.only(left: 15),
        groupValue: controller.selectedValue.value,
        onChanged: (value) {
          controller.updateSelectedValue(value!);
          Navigator.of(dialogContext).pop(); // Dismiss the dialog
        },
        title: Text(title, style: const TextStyle(color: Colors.white,fontFamily: 'regularFont',fontSize: 13),),
        activeColor: AppTheme.yellow,
        controlAffinity: ListTileControlAffinity.trailing,
      ),
    );
  }

  void _showSkillExperiencePopup(BuildContext context) {
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
              padding: const EdgeInsets.only(top: 5,right: 5,bottom: 5),
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
                                text: "Skill Experience",
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: "rubikFont",
                                fontWeight: FontWeight.w600)),
                      ),
                      Expanded(flex: 1, child: Container()),
                    ],
                  ),

                  const Divider(color: Colors.transparent),
                  _buildRadioSkillExperience('Beginner', context),
                  _buildRadioSkillExperience('Novice', context),
                  _buildRadioSkillExperience('Intermediate', context),
                  _buildRadioSkillExperience('Proficient', context),
                  _buildRadioSkillExperience('Advanced', context),
                  _buildRadioSkillExperience('Expert', context),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
  Widget _buildRadioSkillExperience(String title, BuildContext dialogContext) {
    return SizedBox(
      width: double.infinity,
      height: 45.h,
      child: Obx(
            () => RadioListTile(
          value: title,
          groupValue: controller.skillExperienceValue.value,
          onChanged: (value) async {
            controller.updateSkillExperienceValue(value!);

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

  void _showRelatedExperiencePopup(BuildContext context) {
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
              padding: const EdgeInsets.only(top: 5,right: 5,bottom: 5),
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
                                text: "Related Skill Experience",
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: "rubikFont",
                                fontWeight: FontWeight.w600)),
                      ),
                      Expanded(flex: 1, child: Container()),
                    ],
                  ),

                  const Divider(color: Colors.transparent),
                  _buildRadioRelatedExperience('No related experience', context),
                  _buildRadioRelatedExperience('Novice', context),
                  _buildRadioRelatedExperience('Intermediate', context),
                  _buildRadioRelatedExperience('Proficient', context),
                  _buildRadioRelatedExperience('Advanced', context),
                  _buildRadioRelatedExperience('Expert', context),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
  Widget _buildRadioRelatedExperience(String title, BuildContext dialogContext) {
    return SizedBox(
      width: double.infinity,
      height: 45.h,
      child: Obx(
            () => RadioListTile(
          value: title,
          groupValue: controller.relatedExperienceValue.value,
          onChanged: (value) async {
            controller.updateRelatedExperienceValue(value!);

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

  void _showLevelMotivationPopup(BuildContext context) {
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
              padding: const EdgeInsets.only(top: 5,right: 5,bottom: 5),
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
                                text: "Level of motivation",
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: "rubikFont",
                                fontWeight: FontWeight.w600)),
                      ),
                      Expanded(flex: 1, child: Container()),
                    ],
                  ),
                  const Divider(color: Colors.transparent),
                  _buildRadioMotivationExperience('Casual', context),
                  _buildRadioMotivationExperience('Regular', context),
                  _buildRadioMotivationExperience('Dedicated', context),
                  _buildRadioMotivationExperience('Hardcore', context),
                  _buildRadioMotivationExperience('Professional', context),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
  Widget _buildRadioMotivationExperience(String title, BuildContext dialogContext) {
    return SizedBox(
      width: double.infinity,
      height: 45.h,
      child: Obx(
            () => RadioListTile(
          value: title,
          groupValue: controller.motivationLevelValue.value,
          onChanged: (value) async {
            controller.updateMotivationValue(value!);

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
