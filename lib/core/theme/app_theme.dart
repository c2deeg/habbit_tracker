import 'package:flutter/material.dart';

import 'custom_colors_theme.dart';

class AppTheme {
  static HexColor colorOrange = HexColor('#FFA400');
  static HexColor cameraBack = HexColor('#252427');
  static HexColor background = HexColor('#1D1A22');
  static HexColor darkBlackBgOne = HexColor('#19191D');
  static HexColor dividerColor = HexColor('#414141');
  static HexColor signUpback = HexColor('#1D1A22');
  static HexColor darkBlackBgTwo = HexColor('#16171B');
  static HexColor lightBlackBgOne = HexColor('#424750');
  static HexColor lightBlackBgTwo = HexColor('#202326');
  static HexColor darkBlackBG = HexColor('#D9D9D9');
  static HexColor disableTextColor = HexColor('#3C3C3C');
  static HexColor editTextBg = HexColor('#322F37');
  static HexColor boxColor = HexColor('#49454F');
  static HexColor green = HexColor('#CBFA7A');
  static HexColor firstBg = HexColor('#E7E7E7');
  static HexColor colorGray = HexColor('#ffffff80');
  static HexColor smallBoxGray = HexColor('#605D66');
  static HexColor colorPurple = HexColor('#9328FF');
  static HexColor colorRed = HexColor('#FA6262');
  static HexColor disabaled= HexColor('#303236');
  static HexColor circularBg = HexColor('#303338');
  static HexColor white = HexColor('#ffffff');
  static HexColor gray = HexColor('#99979b');
  static HexColor mileStoneBg = HexColor('#322F37');
  static HexColor backColor= HexColor('#f2f2f2');
  static HexColor grayTextColor= HexColor('##97999B');
  static HexColor grayColor= HexColor('#f5f6f9');
  static HexColor yellow= HexColor('#FFCB65');
  static HexColor planeYellow= HexColor('#94805A');
  static HexColor li8YellowTwo= HexColor('#fff7f6');
  static HexColor blue= HexColor('#0AA5EC');
  static HexColor lightWhite= HexColor('##CAC4D0');
  static HexColor bluetow= HexColor('#e4edf2');
  static HexColor lightBlack= HexColor('#292c31');
  static HexColor surfaceBlack= HexColor('#322F37');
  static HexColor lightBlue= HexColor('#605d66');
  static HexColor lightGray= HexColor('#696661');
  static ThemeData get({required bool isLight}) {
    final base = isLight ? ThemeData.light() :ThemeData.light( );
    return base.copyWith(
      extensions: [
        CustomColorsTheme(
          colorLabelColor: isLight ? Colors.grey : Colors.grey,
          bottomNavigationBarBackgroundColor: isLight ? Colors.white :  Colors.white ,
          activeNavigationBarColor: isLight ? colorPurple : colorPurple,
          notActiveNavigationBarColor: isLight ? colorGray : colorGray ,
          shadowNavigationBarColor: isLight ? colorPurple : colorPurple,
        )
      ],
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: isLight ? colorPurple : colorPurple,
      ),
      bottomSheetTheme:  BottomSheetThemeData(backgroundColor: isLight ? background : background,),
      appBarTheme: AppBarTheme(
        backgroundColor: isLight ? background : background,
      ),
      colorScheme: base.colorScheme.copyWith(
        surface: isLight ? colorPurple : colorPurple,
        background: isLight ? Colors.white :Colors.white ,
      ),
    );
  }
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}
