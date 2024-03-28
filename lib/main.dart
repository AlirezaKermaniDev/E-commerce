import 'dart:ui';

import 'package:ecommerce_app/core/local_storage/local_storage.dart';
import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/presentation/bloc/header_bloc/header_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'core/app_routes.dart';
import 'injection/injection.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  await initialDependencies();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    getIt<SizeConfig>().setSizeConfigs(context);

    return BlocProvider(
      create: (_) => getIt<HeaderBloc>(),
      child: MaterialApp.router(
        title: 'E-commerce',
        routerConfig: routes,
        scrollBehavior: kIsWeb ? AppScrollBehavior() : null,
        debugShowCheckedModeBanner: false,
        locale: getIt<LocalStorage>().getLocale(),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
      ),
    );
  }
}

Future initialDependencies() async {
  colorPalette = getIt<LocalStorage>().getTheme().colorPalette;
  typography = getIt<LocalStorage>().getTheme().typography;
}

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.trackpad,
      };
}
