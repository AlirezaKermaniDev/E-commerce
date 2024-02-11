import 'package:ecommerce_app/core/app_theme/app_theme.dart';
import 'package:ecommerce_app/core/app_theme/color_palette.dart';
import 'package:ecommerce_app/core/app_theme/typography.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

/// [getIt] is our injection that we created as global variable to make accessable from everywhere.
final GetIt getIt = GetIt.instance;

/// Easy access to `ColorPalette` with service locator
final ColorPalette colorPalette = getIt<AppTheme>().colorPalette;

/// Easy access to `Typography` with service locator
final Typography typography = getIt<AppTheme>().typography;

/// Here we implement our injection configure.
///
/// With help of `injectable` package the code will automatically generage.
/// all we have to do is set the lable for every class that we want to put them in injection. like [injectableInit]
@injectableInit
void configureDependencies() {
  getIt.init();
}
