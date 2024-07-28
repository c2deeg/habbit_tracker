

import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

class CommonStrings {
  static String vitnamPro = "VitnamPro";

  static const int transitionDuration = 320;
  static const int zeroDuration = 0;
  static const Transition transition = Transition.rightToLeft;
  static const Transition bottomToToptransition = Transition.rightToLeft;
  static String token = "";
}

class CreditDebitMask {
  static const americanExpressMask = "0000 000000 00000";
  static const otherCreditDebitMask = "0000 0000 0000 0000";
}

// void errorAlertBox({required response, required Function() onPressed}) {
//   if (Get.isDialogOpen == null || Get.isDialogOpen == false) {
//     Get.dialog(
//       cupertino_dialog.CupertinoAlertDialog(
//         title: Text(AppStrings.alert.tr,
//                 style: lightTextTheme.displaySmall?.copyWith(
//                     fontSize: 16.sp,
//                     color: lightColorPalette.additionalSwatch1.shade900))
//             .paddingOnly(bottom: 10.h),
//         content: Text(response ?? AppStrings.somethingWentWrong.tr,
//             style: lightTextTheme.labelMedium?.copyWith(
//                 fontWeight: FontWeight.w300,
//                 fontSize: 13.sp,
//                 color: lightColorPalette.additionalSwatch1.shade900)),
//         actions: <CupertinoDialogAction>[
//           CupertinoDialogAction(
//             onPressed: () {
//               onPressed();
//             },
//             child: Text(AppStrings.strOk.tr,
//                 style: lightTextTheme.titleSmall?.copyWith(
//                     fontSize: 17,
//                     color: lightColorPalette.additionalSwatch1.shade900)),
//           ),
//         ],
//       ),
//     );
//   }
// }
