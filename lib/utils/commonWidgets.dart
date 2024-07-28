import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

Widget commonTextField(
    {required TextEditingController textEditingController,
      required String keyword,
      bool? enabled,
      TextInputType? type,
      TextInputAction? action,
      bool? obscureText,
      Widget? suffix,
      List<TextInputFormatter>? input,
      int? maxlength,
      int? maxline,
      double? borderround,
      Color? fillColor
    }) {
  return TextFormField(
    style: const TextStyle(
      color: AppColor.black,
      fontWeight: FontWeight.w400,
      fontSize:14.0,
    ),
    obscureText: obscureText??false,
    controller: textEditingController,
    inputFormatters: input??[],
    maxLines: maxline??1,
    enabled: enabled??true,
    maxLength: maxlength??50,
    autofocus: false,
    textInputAction: action??TextInputAction.done,
    keyboardType: type??TextInputType.text,
    autovalidateMode: AutovalidateMode.disabled,
    decoration: InputDecoration(
      filled: true,
      counterText: "",
      suffixIconConstraints: const BoxConstraints(
          maxHeight: 50,
          maxWidth: 50
      ),
      suffixIcon: suffix??Container(),
      fillColor:fillColor?? Colors.transparent,
      border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColor.black
          ),
          borderRadius: BorderRadius.circular(
              borderround??50
          )   ),
      focusedBorder:  OutlineInputBorder(
          borderSide: const BorderSide(
              color: AppColor.black
          ),
          borderRadius: BorderRadius.circular(
              borderround??50
          )   ),
      hintStyle:   TextStyle(
        color: AppColor.black,
        fontWeight: FontWeight.w400,
        fontSize: 14.sp,
      ),
      hintText: keyword,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
    ),
  );
}

