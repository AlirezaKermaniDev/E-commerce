import 'package:flutter/material.dart';

abstract class ColorPalette {
  late Color primary;
  late Color darkPrimary;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late LinearGradient gradient1;
  late LinearGradient gradient2;
  late LinearGradient gradient3;
  late LinearGradient gradient4;
  late Color gray1;
  late Color gray2;
  late Color gray3;
  late Color gray4;
  late Color gray5;
  late Color gray6;
}

class LightColorPalette implements ColorPalette {
  @override
  Color accent1 = const Color(0xff315BFF);

  @override
  Color accent2 = const Color(0xff02BE83);

  @override
  Color accent3 = const Color(0xffFE7831);

  @override
  Color accent4 = const Color(0xffFF3C78);

  @override
  Color primary = const Color(0xffFFFFFF);

  @override
  Color darkPrimary = const Color(0xff0A083A);

  @override
  LinearGradient gradient1 = const LinearGradient(
    colors: [
      Color(0xff8AA8F8),
      Color(0xff315BFF),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  @override
  LinearGradient gradient2 = const LinearGradient(
    colors: [
      Color(0xffB3F6DC),
      Color(0xff02BE83),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  @override
  LinearGradient gradient3 = const LinearGradient(
    colors: [
      Color(0xffFFDEBE),
      Color(0xffFE7831),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  @override
  LinearGradient gradient4 = const LinearGradient(
    colors: [
      Color(0xffFFB2B2),
      Color(0xffFF3C78),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  @override
  Color gray1 = const Color(0xff6C6B6B);

  @override
  Color gray2 = const Color(0xff888787);

  @override
  Color gray3 = const Color(0xffA4A4A3);

  @override
  Color gray4 = const Color(0xffC1C0C0);

  @override
  Color gray5 = const Color(0xffEBEBEA);

  @override
  Color gray6 = const Color(0xffF5F5F5);
}

class DarkColorPalette implements ColorPalette {
  @override
  Color accent1 = const Color(0xff315BFF);

  @override
  Color accent2 = const Color(0xff02BE83);

  @override
  Color accent3 = const Color(0xffFE7831);

  @override
  Color accent4 = const Color(0xffFF3C78);

  @override
  Color primary = const Color(0xff0A083A);

  @override
  Color darkPrimary = const Color(0xffFFFFFF);

  @override
  LinearGradient gradient1 = const LinearGradient(
    colors: [
      Color(0xff8AA8F8),
      Color(0xff315BFF),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  @override
  LinearGradient gradient2 = const LinearGradient(
    colors: [
      Color(0xffB3F6DC),
      Color(0xff02BE83),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  @override
  LinearGradient gradient3 = const LinearGradient(
    colors: [
      Color(0xffFFDEBE),
      Color(0xffFE7831),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  @override
  LinearGradient gradient4 = const LinearGradient(
    colors: [
      Color(0xffFFB2B2),
      Color(0xffFF3C78),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  @override
  Color gray1 = const Color.fromARGB(255, 238, 237, 240);

  @override
  Color gray2 = const Color.fromARGB(255, 204, 199, 215);

  @override
  Color gray3 = const Color.fromARGB(255, 167, 159, 184);

  @override
  Color gray4 = const Color.fromARGB(255, 127, 116, 151);

  @override
  Color gray5 = const Color.fromARGB(255, 88, 73, 118);

  @override
  Color gray6 = const Color.fromARGB(255, 23, 20, 97);
}
