import 'dart:ui';

class AppColor {
  AppColor._();

  static const Color cerulean = Color(0xff4281a4);
  static const Color verdigris = Color(0xff48a9a6);
  static const Color tiffanyBlue = Color(0xff96c4c0);
  static const Color timberWolf = Color(0xffe4dfda);
  static const Color dun = Color(0xffdccaaf);
  static const Color ecru = Color(0xffd4b483);
  static const Color rosyBrown = Color(0xffcb8d77);
  static const Color indianRed = Color(0xffc1666b);
  static const Color ashGray = Color(0xffb1cdb7);
  static const Color beige = Color(0xffe2e9c7);
  static const Color cornsilk = Color(0xfffefae0);
  static const Color eggshell = Color(0xfff9f2dd);
  static const Color pearl = Color(0xffebdec5);
  static const Color desertSand = Color(0xffdbb69e);

  static const List<Color> colorsGroupAlpha = [
    cerulean,
    verdigris,
    tiffanyBlue,
    timberWolf,
    dun,
    ecru,
    rosyBrown,
    indianRed,
  ];

  static const List<Color> colorsGroupBeta = [
    tiffanyBlue,
    ashGray,
    beige,
    timberWolf,
    pearl,
    dun,
  ];

  static Color getGroupAlpha(int index) {
    return colorsGroupAlpha[index % colorsGroupAlpha.length];
  }

  static Color getGroupBeta(int index) {
    return colorsGroupBeta[index % colorsGroupBeta.length];
  }
}