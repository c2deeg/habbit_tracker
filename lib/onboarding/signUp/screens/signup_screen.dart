import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/common_ui/CommonClass.dart';
import '../../../core/theme/app_theme.dart';
import '../../../routes/routes.dart';
import '../controller/signup_screen_controller.dart';

class SignUpScreen extends GetView<SignupScreenController> {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        color: AppTheme.background,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                                text: "Create your account",
                                color: Colors.white,
                                fontSize: 22,
                                fontFamily: "regularBold",
                                fontWeight: FontWeight.w600)),
                      ),
                      Expanded(flex: 1, child: Container()),
                    ],
                  ),
                  Center(
                    child: SvgPicture.asset(
                      "assets/svg/logo.svg",
                      width: 250,
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: AppTheme.editTextBg,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(left: 4, right: 4),
                    height: 55,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: SvgPicture.asset(
                            "assets/svg/user.svg",
                            height: 25,
                            width: 25,
                          ),
                        ),
                        Expanded(
                          child: TextFormField(
                            onChanged: (value) {
                              /*provide.etEmail.text=value;
                              provide.checkLoginData();*/
                            },
                            textAlign: TextAlign.justify,
                            cursorColor: Colors.white,
                            controller: controller.userNameController,
                            keyboardType: TextInputType.emailAddress,
                            autocorrect: false,
                            decoration: const InputDecoration(
                              hintText: "Username",
                              hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "regularFont",
                                  fontSize: 14),
                              contentPadding:
                                  EdgeInsets.only(left: 10, right: 10),
                              border: InputBorder.none,
                            ),
                            style: const TextStyle(
                                color: Colors.white,
                                fontFamily: "regularFont",
                                fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: AppTheme.editTextBg,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(left: 4, right: 4),
                    height: 55,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: SvgPicture.asset(
                            "assets/svg/sms.svg",
                            height: 25,
                            width: 25,
                          ),
                        ),
                        Expanded(
                          child: TextFormField(
                            onChanged: (value) {
                              /*provide.etEmail.text=value;
                              provide.checkLoginData();*/
                            },
                            textAlign: TextAlign.justify,
                            cursorColor: Colors.white,
                            controller: controller.emailController,
                            keyboardType: TextInputType.emailAddress,
                            autocorrect: false,
                            decoration: const InputDecoration(
                              hintText: "Email",
                              hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "regularFont",
                                  fontSize: 14),
                              contentPadding:
                                  EdgeInsets.only(left: 10, right: 10),
                              border: InputBorder.none,
                            ),
                            style: const TextStyle(
                                color: Colors.white,
                                fontFamily: "regularFont",
                                fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: AppTheme.editTextBg,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(left: 6, right: 6),
                    height: 55,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: SvgPicture.asset(
                            "assets/svg/lock.svg",
                            height: 25,
                            width: 25,
                          ),
                        ),
                        Expanded(
                          child:Obx(()=>
                              TextFormField(
                                onChanged: (value) {
                                  /*    provide.etPassword.text=value;
                              provide.checkLoginData();*/
                                },
                                textAlign: TextAlign.justify,
                                cursorColor: Colors.white,
                                obscureText: controller.passwordEye.value,
                                controller: controller.passwordController,
                                keyboardType: TextInputType.visiblePassword,
                                autocorrect: false,
                                decoration: const InputDecoration(
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "regularFont",
                                      fontSize: 14),
                                  contentPadding:
                                  EdgeInsets.only(left: 10, right: 10),
                                  border: InputBorder.none,
                                ),
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: "regularFont",
                                    fontSize: 14),
                              )),
                        ),
                        GestureDetector(
                          onTap: () {
                            controller.passwordEye.value = !controller.passwordEye.value;
                            // controller.notifyListeners();
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Obx(()=>Image.asset(
                              controller.passwordEye.value
                                  ? 'assets/images/eye_open_icon.png'
                                  : 'assets/images/eye_close_icon.png',
                              height: 25,
                              width: 25,
                              color: Colors.white,
                            )),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: AppTheme.editTextBg,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(left: 6, right: 6),
                    height: 55,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: SvgPicture.asset(
                            "assets/svg/lock.svg",
                            height: 25,
                            width: 25,
                          ),
                        ),
                        Expanded(
                          child: Obx(()=>TextFormField(
                            onChanged: (value) {
                              /*    provide.etPassword.text=value;
                              provide.checkLoginData();*/
                            },
                            textAlign: TextAlign.justify,
                            cursorColor: Colors.white,
                            obscureText: controller.confirmPasswordEye.value,
                            controller: controller.confirmPasswordController,
                            keyboardType: TextInputType.visiblePassword,
                            autocorrect: false,
                            decoration: const InputDecoration(
                              hintText: "Confirm Password",
                              hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "regularFont",
                                  fontSize: 14),
                              contentPadding:
                              EdgeInsets.only(left: 10, right: 10),
                              border: InputBorder.none,
                            ),
                            style: const TextStyle(
                                color: Colors.white,
                                fontFamily: "regularFont",
                                fontSize: 14),
                          )),
                        ),
                        GestureDetector(
                          onTap: () {
                            controller.confirmPasswordEye.value = !controller.confirmPasswordEye.value;
                            // controller.notifyListeners();
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Obx(()=>
                                Image.asset(
                                  controller.confirmPasswordEye.value
                                      ? 'assets/images/eye_open_icon.png'
                                      : 'assets/images/eye_close_icon.png',
                                  height: 25,
                                  width: 25,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 70.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: controller.isButtonEnabled.value
                            ? () {
                                Get.toNamed(Routes.loginScreen);
                              }
                            : null,
                        highlightColor: Colors.transparent,
                        child: Obx(() => Container(
                              decoration: BoxDecoration(
                                  color:  controller.isButtonEnabled.value ? AppTheme.yellow :AppTheme.grayTextColor ,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30))),
                              alignment: Alignment.center,
                              margin:
                                  const EdgeInsets.only(left: 16, right: 16),
                              height: 60,
                              width: MediaQuery.sizeOf(context).width - 100,
                              child: controller.isLoading.value
                                  ? const CircularProgressIndicator(
                                      color: Colors.black,
                                    )
                                  : CommonClass.normalText(
                                      text: "Create Account",
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: "regularFont",
                                      fontWeight: FontWeight.w600),
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                            text: "Have an account?",
                            style: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                                fontFamily: "regularFont",
                                fontSize: 12),
                            children: [
                              TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Get.toNamed(Routes.loginScreen);
                                    },
                                  text: "  Sign In",
                                  style: TextStyle(
                                      color: AppTheme.yellow,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "regularBold",
                                      fontSize: 12)),
                            ]),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
