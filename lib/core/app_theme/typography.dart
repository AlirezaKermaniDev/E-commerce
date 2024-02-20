import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Typography {
  late TextStyle heroTitle;
  late TextStyle h1Title;
  late TextStyle h2Title;
  late TextStyle h3Title;
  late TextStyle h4Title;
  late TextStyle h5Title;
  late TextStyle bodyText1;
  late TextStyle bodyText2;
  late TextStyle bodyText3;
  late TextStyle bodyText4;
}

class LightTypography implements Typography {
  @override
  TextStyle bodyText1 = GoogleFonts.workSans(
    color: const Color(0xff0A083A),
    fontWeight: FontWeight.w500,
    fontSize: 18,
    letterSpacing: 0,
  );

  @override
  TextStyle bodyText2 = GoogleFonts.workSans(
    color: const Color(0xff0A083A),
    fontWeight: FontWeight.w500,
    fontSize: 16,
    letterSpacing: 0,
  );

  @override
  TextStyle bodyText3 = GoogleFonts.workSans(
    color: const Color(0xff0A083A),
    fontWeight: FontWeight.w500,
    fontSize: 20,
    letterSpacing: 0,
  );

  @override
  TextStyle bodyText4 = GoogleFonts.workSans(
    color: const Color(0xff0A083A),
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0,
  );

  @override
  TextStyle h1Title = GoogleFonts.workSans(
    color: const Color(0xff0A083A),
    fontWeight: FontWeight.bold,
    fontSize: 56,
    letterSpacing: -4,
  );

  @override
  TextStyle h2Title = GoogleFonts.workSans(
    color: const Color(0xff0A083A),
    fontWeight: FontWeight.bold,
    fontSize: 48,
    letterSpacing: -3,
  );

  @override
  TextStyle h3Title = GoogleFonts.workSans(
    color: const Color(0xff0A083A),
    fontWeight: FontWeight.bold,
    fontSize: 40,
    letterSpacing: -2,
  );

  @override
  TextStyle h4Title = GoogleFonts.workSans(
    color: const Color(0xff0A083A),
    fontWeight: FontWeight.bold,
    fontSize: 32,
    letterSpacing: -1,
  );

  @override
  TextStyle h5Title = GoogleFonts.workSans(
    color: const Color(0xff0A083A),
    fontWeight: FontWeight.bold,
    fontSize: 24,
    letterSpacing: 0,
  );

  @override
  TextStyle heroTitle = GoogleFonts.workSans(
      color: const Color(0xff0A083A),
      fontWeight: FontWeight.bold,
      fontSize: 72,
      letterSpacing: -4,
      height: 1.1);
}

class DarkTypography implements Typography {
  @override
  TextStyle bodyText1 = GoogleFonts.workSans(
    color: const Color(0xffFFFFFF),
    fontWeight: FontWeight.w500,
    fontSize: 18,
    letterSpacing: 0,
  );

  @override
  TextStyle bodyText2 = GoogleFonts.workSans(
    color: const Color(0xffFFFFFF),
    fontWeight: FontWeight.w500,
    fontSize: 16,
    letterSpacing: 0,
  );

  @override
  TextStyle bodyText3 = GoogleFonts.workSans(
    color: const Color(0xffFFFFFF),
    fontWeight: FontWeight.w500,
    fontSize: 20,
    letterSpacing: 0,
  );

  @override
  TextStyle bodyText4 = GoogleFonts.workSans(
    color: const Color(0xffFFFFFF),
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0,
  );

  @override
  TextStyle h1Title = GoogleFonts.workSans(
    color: const Color(0xffFFFFFF),
    fontWeight: FontWeight.bold,
    fontSize: 56,
    letterSpacing: -4,
  );

  @override
  TextStyle h2Title = GoogleFonts.workSans(
    color: const Color(0xffFFFFFF),
    fontWeight: FontWeight.bold,
    fontSize: 48,
    letterSpacing: -3,
  );

  @override
  TextStyle h3Title = GoogleFonts.workSans(
    color: const Color(0xffFFFFFF),
    fontWeight: FontWeight.bold,
    fontSize: 40,
    letterSpacing: -2,
  );

  @override
  TextStyle h4Title = GoogleFonts.workSans(
    color: const Color(0xffFFFFFF),
    fontWeight: FontWeight.bold,
    fontSize: 32,
    letterSpacing: -1,
  );

  @override
  TextStyle h5Title = GoogleFonts.workSans(
    color: const Color(0xffFFFFFF),
    fontWeight: FontWeight.bold,
    fontSize: 24,
    letterSpacing: 0,
  );

  @override
  TextStyle heroTitle = GoogleFonts.workSans(
      color: const Color(0xffFFFFFF),
      fontWeight: FontWeight.bold,
      fontSize: 72,
      letterSpacing: -4,
      height: 1.1);
}
