import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray5001 = fromHex('#f8f9fa');

  static Color gray5002 = fromHex('#fafcff');

  static Color red700 = fromHex('#d03329');

  static Color blueA700 = fromHex('#0061ff');

  static Color lightBlue100 = fromHex('#b0e5fc');

  static Color yellow9003f = fromHex('#3feb9612');

  static Color red200 = fromHex('#fa9a9a');

  static Color gray60019 = fromHex('#197e7e7e');

  static Color gray4004c = fromHex('#4cc4c4c4');

  static Color greenA100 = fromHex('#b5eacd');

  static Color black9003f = fromHex('#3f000000');

  static Color green600 = fromHex('#349765');

  static Color gray50 = fromHex('#f9fbff');

  static Color gray30099 = fromHex('#99e4e4e4');

  static Color whiteA70099 = fromHex('#99ffffff');

  static Color black900 = fromHex('#000000');

  static Color gray20001 = fromHex('#efefef');

  static Color blueGray700 = fromHex('#424c5d');

  static Color blueGray90001 = fromHex('#24363c');

  static Color blueGray900 = fromHex('#262b35');

  static Color gray70011 = fromHex('#11555555');

  static Color gray90002 = fromHex('#151522');

  static Color gray400 = fromHex('#b3b3b3');

  static Color blueGray100 = fromHex('#d6dae2');

  static Color blueGray400 = fromHex('#74839d');

  static Color blueGray300 = fromHex('#9ea8ba');

  static Color blueGray600 = fromHex('#5f6c86');

  static Color redA200 = fromHex('#fe555d');

  static Color gray900 = fromHex('#09101d');

  static Color gray90001 = fromHex('#2a2a2a');

  static Color blueGray30000 = fromHex('#009ea8ba');

  static Color gray200 = fromHex('#ebebeb');

  static Color gray60026 = fromHex('#266d6d6d');

  static Color blue50 = fromHex('#e0ebff');

  static Color deepPurple50 = fromHex('#ebe8f1');

  static Color gray70026 = fromHex('#26555555');

  static Color blueGray1006c = fromHex('#6cd1d3d4');

  static Color indigo900 = fromHex('#002055');

  static Color blueGray40001 = fromHex('#888888');

  static Color whiteA700 = fromHex('#ffffff');

  static Color blueGray70001 = fromHex('#535763');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
