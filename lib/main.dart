import 'dart:ui';

import 'package:ecommerce_app/core/local_storage/local_storage.dart';
import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/firebase_options.dart';
import 'package:ecommerce_app/presentation/bloc/header_bloc/header_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'core/app_routes.dart';
import 'injection/injection.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  //await initialFirebase();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    getIt<SizeConfig>().setSizeConfigs(context);
    return BlocProvider(
      create: (_) => getIt<HeaderBloc>(),
      child: BlocBuilder<HeaderBloc, HeaderState>(
        builder: (context, state) {
          colorPalette = getIt<LocalStorage>().getTheme().colorPalette;
          typography = getIt<LocalStorage>().getTheme().typography;
          final locale = getIt<LocalStorage>().getLocale();
          return MaterialApp.router(
            title: 'E-commerce',
            routerConfig: routes,
            scrollBehavior: kIsWeb ? AppScrollBehavior() : null,
            debugShowCheckedModeBanner: false,
            locale: locale,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
          );
        },
      ),
    );
  }
}

Future initialFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.trackpad,
      };
}
