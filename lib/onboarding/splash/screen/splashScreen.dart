
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/common_ui/asset.dart';
import '../../../core/common_ui/common_image_widget.dart';
import '../../../core/constants/image_resources.dart';
import '../../../core/theme/app_theme.dart';
import '../controller/splashController.dart';


class SplashScreen extends GetView<SplashController>{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      body: Container(
        decoration: BoxDecoration(gradient: LinearGradient(colors: [AppTheme.darkBlackBgOne,AppTheme.darkBlackBgTwo],begin: Alignment.topRight,
          end: Alignment.bottomLeft,)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: SvgPicture.asset(
                  "assets/svg/logo.svg",
                  width: 250,
                )
            ),

          ],
        ),
      ),
    );
  }




}