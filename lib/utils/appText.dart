import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum AppTextStyle { title, medium, regular, small }

class AppText extends StatelessWidget {
  final String text;
  final dynamic color;
  final dynamic underlineColor;
  final AppTextStyle? style;
  final bool? underline;
  final bool? strikeThrough;
  final double? textSize;
  final bool? capitalise;
  final int? maxLines;
  final TextAlign? textAlign;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final double? lineHeight;
  final FontStyle? fontStyle;
  final double? letterSpacing;
  final double? decorationThickness;
  final TextOverflow? overflow;
  final List<Shadow>? shadows;

  AppText(
      {super.key, required this.text,
        this.color,
        this.style,
        this.maxLines,
        this.textAlign,
        this.underline,
        this.textSize,
        this.fontFamily,
        this.fontWeight,
        this.lineHeight,
        this.fontStyle,
        this.underlineColor,
        this.strikeThrough,
        this.capitalise,
        this.letterSpacing,
        this.shadows,
        this.overflow,
        this.decorationThickness});

  @override
  Widget build(BuildContext context) {
    //double width = MediaQuery.of(context).size.width;
    return Text(
      capitalise != null && capitalise! ? text.toUpperCase() : text.tr,
      maxLines: maxLines,
      overflow: maxLines != null ? TextOverflow.ellipsis : null,
      textAlign: textAlign,
      style: getStyle(color ?? Colors.black, textSize ?? 15),
    );
  }

  TextStyle getStyle(
      Color color,
      double textSize,
      ) {
    return TextStyle(
        overflow: overflow,
        shadows: shadows,
        color: color,
        letterSpacing: letterSpacing,
        fontWeight: fontWeight ?? getWeight(),
        fontSize: textSize,
        fontStyle: fontStyle ?? FontStyle.normal,
        height: lineHeight ?? 1.0,
        fontFamily: fontFamily ?? "Gotham",
        decorationColor: underlineColor ?? Colors.white,
        decorationThickness: decorationThickness ?? 1,
        decoration: strikeThrough != null && strikeThrough!
            ? TextDecoration.lineThrough
            : underline != null
            ? TextDecoration.underline
            : null);
  }

  getTextSize(double width) {
    switch (style) {
      case AppTextStyle.title:
        return width * 0.08;
      case AppTextStyle.medium:
        return width * 0.06;
      case AppTextStyle.small:
        return width * 0.02;
      default:
        return width * 0.04;
    }
  }

  FontWeight getWeight() {
    switch (style) {
      case AppTextStyle.title:
        return FontWeight.w600;
      case AppTextStyle.medium:
        return FontWeight.w500;
      case AppTextStyle.regular:
        return FontWeight.w400;
      case AppTextStyle.small:
        return FontWeight.w300;
      default:
        return FontWeight.w400;
    }
  }
}
