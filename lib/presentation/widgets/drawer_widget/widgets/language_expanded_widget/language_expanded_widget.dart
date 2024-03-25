import 'package:country_flags/country_flags.dart';
import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/core/local_storage/local_storage.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/bloc/header_bloc/header_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguagesExpandedWidget extends StatelessWidget {
  const LanguagesExpandedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        children: AppLocalizations.supportedLocales
            .map(
              (e) => RadioListTile.adaptive(
                activeColor: colorPalette.accent4,
                value: e,
                groupValue: getIt<LocalStorage>().getLocale(),
                onChanged: (value) {
                  context
                      .read<HeaderBloc>()
                      .add(HeaderEvent.changeLanguage(locale: value!));
                },
                title: Row(
                  children: [
                    CountryFlag.fromLanguageCode(
                      e.languageCode.replaceAll("ar", "ar-SA"),
                      height: 25,
                      width: 25,
                      borderRadius: 3,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      e.toLanguageName(context),
                      style: typography.bodyText2
                          .copyWith(color: colorPalette.gray2),
                    ),
                  ],
                ),
              ),
            )
            .toList());
  }
}
