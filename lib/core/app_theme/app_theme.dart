import 'package:ecommerce_app/core/app_theme/color_palette.dart';
import 'package:ecommerce_app/core/app_theme/typography.dart';
import 'package:flutter/material.dart' as material;
import 'package:injectable/injectable.dart';

abstract class AppTheme {
  late material.ThemeMode themeMode;
  late ColorPalette colorPalette;
  late Typography typography;
}

@LazySingleton(as: AppTheme)
class LightAppTheme implements AppTheme {
  @override
  material.ThemeMode themeMode = material.ThemeMode.light;

  @override
  ColorPalette colorPalette = LightColorPalette();

  @override
  Typography typography = LightTypography();
}

class DarkAppTheme implements AppTheme {
  @override
  material.ThemeMode themeMode = material.ThemeMode.dark;

  @override
  ColorPalette colorPalette = DarkColorPalette();

  @override
  Typography typography = DarkTypography();
}
