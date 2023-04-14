import 'package:flutter/material.dart';

class ColorScale {
  const ColorScale();

  static const Color black = Color(0xff000000);
  static const Color white = Color(0xffFFFFFF);
  static const Color prime = Color(0xff005EF6);
  static const Color red = Color(0xffFA4D56);
  static const Color yellow = Color(0xffF1C21B);
  static const Color green01 = Color(0xff42BE65);
  static const Color green02 = Color(0xff198038);
  static const Color blue01 = Color(0xffDDE9FE);
  static const Color blue02 = Color(0xffC5DAFD);
  static const Color blue03 = Color(0xffACCAFC);
  static const Color blue04 = Color(0xff94BBFB);
  static const Color blue05 = Color(0xff629CFA);
  static const Color blue06 = Color(0xff317DF8);
  static const Color blue07 = Color(0xff005EF6);
  static const Color red01 = Color(0xffFFEFF0);
  static const Color red02 = Color(0xffF8D2D4);
  static const Color red03 = Color(0xffF4BBBE);
  static const Color red04 = Color(0xffF0A5A9);
  static const Color red05 = Color(0xffE9787E);
  static const Color red06 = Color(0xffE14B53);
  static const Color red07 = Color(0xffDA1E28);
  static const Color gray01 = Color(0xffF2F4F6);
  static const Color gray02 = Color(0xffE5E5E5);
  static const Color gray03 = Color(0xffA8A8A8);
  static const Color gray04 = Color(0xff4A4A4A);
  static const Color gray05 = Color(0xff1D1D1D);
  static const Color warmGray01 = Color(0xffFAFAFB);
  static const Color warmGray02 = Color(0xffD6D6DD);
  static const Color warmGray03 = Color(0xff93939F);
  static const Color warmGray04 = Color(0xff747481);
  static const Color warmGray05 = Color(0xff585865);
  static const Color warmGray06 = Color(0xff3B3B46);
  static const Color warmGray07 = Color(0xff1E1E25);
  static const Color coolGray01 = Color(0xffD2D8DD);
  static const Color coolGray02 = Color(0xffB0B7C1);
  static const Color coolGray03 = Color(0xff8B95A1);
  static const Color coolGray04 = Color(0xff6B7684);
  static const Color coolGray05 = Color(0xff4E5968);
  static const Color coolGray06 = Color(0xff333D4B);
  static const Color coolGray07 = Color(0xff283447);
}

class ColorGuide {
  const ColorGuide();

  static const Color danger01 = ColorScale.red07;
  static const Color danger02 = ColorScale.red06;
  static const Color disabled1 = ColorScale.gray01;
  static const Color disabled2 = ColorScale.coolGray01;
  static const Color disabled3 = ColorScale.warmGray02;
  static const Color field01 = ColorScale.white;
  static const Color field02 = ColorScale.warmGray01;
  static const Color field03 = ColorScale.blue01;
  static const Color field04 = ColorScale.red01;
  static const Color focus = ColorScale.blue06;
  static const Color icon01 = ColorScale.gray05;
  static const Color icon02 = ColorScale.gray04;
  static const Color icon03 = ColorScale.white;
  static const Color icon04 = ColorScale.gray02;
  static const Color interactive01 = ColorScale.blue07;
  static const Color interactive02 = ColorScale.warmGray05;
  static const Color interactive03 = ColorScale.blue01;
  static const Color interactive04 = ColorScale.blue07;
  static const Color interactive05 = ColorScale.white;
  static const Color inverse01 = ColorScale.white;
  static const Color inverse02 = ColorScale.gray05;
  static const Color inverseSupport01 = ColorScale.red;
  static const Color inverseSupport02 = ColorScale.green01;
  static const Color inverseSupport03 = ColorScale.yellow;
  static const Color pressed01 = ColorScale.warmGray01;
  static const Color pressed02 = ColorScale.blue05;
  static const Color pressed03 = ColorScale.warmGray07;
  static const Color pressed04 = ColorScale.gray02;
  static const Color support01 = ColorScale.red07;
  static const Color support02 = ColorScale.green02;
  static const Color support03 = ColorScale.yellow;
  static const Color support04 = ColorScale.blue07;
  static const Color text01 = ColorScale.gray05;
  static const Color text02 = ColorScale.gray04;
  static const Color text03 = ColorScale.gray03;
  static const Color text04 = ColorScale.white;
  static const Color textError = ColorScale.red05;
  static const Color ui01 = ColorScale.white;
  static const Color ui02 = ColorScale.gray02;
  static const Color ui03 = ColorScale.gray03;
  static const Color ui04 = ColorScale.blue06;
  static const Color ui05 = ColorScale.blue03;
  static const Color uiBackground = ColorScale.gray01;
}

class FontGuide {
  const FontGuide();

  static const String fontFamily = 'SpoqaHanSansNeo';
  static const double letterSpacing = -0.6;

  static const TextStyle displayL = TextStyle(
    fontFamily: fontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w700,
    letterSpacing: letterSpacing,
  );

  static const TextStyle displayM = TextStyle(
    fontFamily: fontFamily,
    fontSize: 22,
    fontWeight: FontWeight.w700,
    letterSpacing: letterSpacing,
  );

  static const TextStyle displayS = TextStyle(
    fontFamily: fontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w700,
    letterSpacing: letterSpacing,
  );

  static const TextStyle headlineL = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w700,
    letterSpacing: letterSpacing,
  );

  static const TextStyle headlineM = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    letterSpacing: letterSpacing,
  );

  static const TextStyle headlineS = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w700,
    letterSpacing: letterSpacing,
  );

  static const TextStyle subheadL = TextStyle(
    fontFamily: fontFamily,
    fontSize: 13,
    fontWeight: FontWeight.w500,
    letterSpacing: letterSpacing,
  );

  static const TextStyle subheadM = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    letterSpacing: letterSpacing,
  );

  static const TextStyle subheadS = TextStyle(
    fontFamily: fontFamily,
    fontSize: 10,
    fontWeight: FontWeight.w500,
    letterSpacing: letterSpacing,
  );

  static const TextStyle bodyXL = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w400,
    letterSpacing: letterSpacing,
  );

  static const TextStyle bodyL = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: letterSpacing,
  );

  static const TextStyle bodyM = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: letterSpacing,
  );

  static const TextStyle bodyS = TextStyle(
    fontFamily: fontFamily,
    fontSize: 13,
    fontWeight: FontWeight.w400,
    letterSpacing: letterSpacing,
  );

  static const TextStyle bodyXS = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: letterSpacing,
  );

  static const TextStyle buttonL = TextStyle(
    fontFamily: fontFamily,
    fontSize: 15,
    fontWeight: FontWeight.w700,
    letterSpacing: letterSpacing,
  );

  static const TextStyle buttonM = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w700,
    letterSpacing: letterSpacing,
  );

  static const TextStyle buttonS = TextStyle(
    fontFamily: fontFamily,
    fontSize: 10,
    fontWeight: FontWeight.w700,
    letterSpacing: letterSpacing,
  );

  static const TextStyle labelL = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: letterSpacing,
  );

  static const TextStyle labelM = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    letterSpacing: letterSpacing,
  );

  static const TextStyle labelS = TextStyle(
    fontFamily: fontFamily,
    fontSize: 10,
    fontWeight: FontWeight.w500,
    letterSpacing: letterSpacing,
  );
}