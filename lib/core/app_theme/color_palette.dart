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
  Color primary = const Color(0xFF07061E);

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
  Color gray1 = const Color(0xFFE9E9EA);

  @override
  Color gray2 = const Color(0xFFAFAFBA);

  @override
  Color gray3 = const Color(0xFF76758D);

  @override
  Color gray4 = const Color(0xFF4C4B69);

  @override
  Color gray5 = const Color(0xFF262547);

  @override
  Color gray6 = const Color(0xFF141330);
}
