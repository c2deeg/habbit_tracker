
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../../../core/color/color_code.dart';
import '../../../core/common_ui/CommonClass.dart';
import '../../../core/common_ui/asset.dart';
import '../../../core/common_ui/common_image_widget.dart';
import '../../../core/constants/image_resources.dart';
import '../../../core/theme/app_theme.dart';
import '../../../routes/routes.dart';
import '../../login/controller/login_screen_controller.dart';
import '../controller/forgot_pass_screen_controller.dart';

class ForgotPassScreen extends GetView<ForgotPassScreenController> {

  const ForgotPassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        color: AppTheme.background,

        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 20.w, right:20.w),
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
                       onTap: (){
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
                     child:Align(
                       alignment: Alignment.center,
                       child:  CommonClass.normalText(text: "Forgot Password",
                           color: Colors.white, fontSize: 22,
                           fontFamily: "rubikFont",fontWeight: FontWeight.w600)),

                   ),
                   Expanded(
                     flex: 1,
                       child: Container()),
                 ],
               ),


                SizedBox(
                  height: 30.h,
                ),

                Container(
                  decoration: BoxDecoration(color:AppTheme.editTextBg,borderRadius: const BorderRadius.all(Radius.circular(10))),
                  alignment: Alignment.centerLeft,
                  margin:const EdgeInsets.only(left: 4,right: 4),
                  height: 55,
                  child:Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: SvgPicture.asset("assets/svg/sms.svg",height: 25,width: 25,),
                      ),
                      Expanded(
                        child: TextFormField(
                          onChanged: (value){
                            /*provide.etEmail.text=value;
                            provide.checkLoginData();*/
                          },
                          textAlign: TextAlign.justify,
                          cursorColor: Colors.white,
                          controller: controller.emailController,
                          keyboardType: TextInputType.emailAddress,
                          autocorrect: false,
                          decoration:const InputDecoration(
                            hintText: "Email",
                            hintStyle:TextStyle(color: Colors.white,fontFamily: "regularFont",fontSize: 14),
                            contentPadding:  EdgeInsets.only(left: 10,right: 10),
                            border: InputBorder.none,
                          ),
                          style: const TextStyle(color: Colors.white,fontFamily: "regularFont",fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(

                      onTap: (){

                        // Get.to(()=>ScreenOne());
                      },
                      highlightColor: Colors.transparent,

                      child: Container(
                        decoration: BoxDecoration(color:AppTheme.yellow,borderRadius: const BorderRadius.all(Radius.circular(30))),
                        alignment: Alignment.center,
                        margin:const EdgeInsets.only(left: 16,right: 16),
                        height: 60,
                        width: MediaQuery.sizeOf(context).width-100,
                        child:controller.isLoading.value?const CircularProgressIndicator(color: Colors.black,):CommonClass.normalText(text: "Retrieve password", color: Colors.black, fontSize: 16, fontFamily: "regularFont", fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                            text: "Don't have an account yet?",
                            style: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                                fontFamily: "regularFont",
                                fontSize: 12),
                            children: [
                              TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Get.toNamed(Routes.signupScreen);

                                    },
                                  text: " Create Account",
                                  style: TextStyle(
                                      color: AppTheme.yellow,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "regularFont",
                                      fontSize: 12)),
                            ]),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30.h,)









              ],
            ),
          ),
        ),
      ),
    );
  }
}
