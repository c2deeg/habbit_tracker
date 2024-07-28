
import 'dart:ui';

class ColorsCode{

  static String buttonBorder= "#73777F";
  static String buttonColortext="#42474E";
  static String forgotPasswordColor="#00629E";
  static String richtextcolor="#1A1C1E";
  final Color bgColor = hexToColor("#1d1a22");

  static Color hexToColor(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }


}