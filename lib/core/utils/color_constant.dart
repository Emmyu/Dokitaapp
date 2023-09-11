import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray400 = fromHex('#c4c4c4');

  static Color gray500 = fromHex('#979797');

  static Color blueGray100 = fromHex('#d9d9d9');

  static Color whiteA7003f = fromHex('#3fffffff');

  static Color blueGray300 = fromHex('#a6a3b8');

  static Color amber500 = fromHex('#fec413');

  static Color blue500 = fromHex('#18a0fb');

  static Color red400 = fromHex('#eb5757');

  static Color gray200 = fromHex('#e7e7e7');

  static Color blue50066 = fromHex('#6618a0fb');

  static Color gray50 = fromHex('#f9f9f9');

  static Color teal400 = fromHex('#209f85');

  static Color blue50014 = fromHex('#1418a0fb');

  static Color whiteA70033 = fromHex('#33ffffff');

  static Color black90011 = fromHex('#11000000');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color blue400 = fromHex('#39afff');

  static Color blueGray900 = fromHex('#202244');

  static Color gray40000 = fromHex('#00c4c4c4');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
