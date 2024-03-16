import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension LocaleExtentions on BuildContext {
  AppLocalizations get locale => AppLocalizations.of(this)!;
  bool get isLtrLocale =>
      AppLocalizations.of(this)!.localeName == "en" ||
      AppLocalizations.of(this)!.localeName == "hi";
}

extension LocaleNameExtentions on Locale {
  String toLanguageName(BuildContext context) =>
      languageCodeToLanguageNameMapper(context)[languageCode]!;
}

Map<String, String> languageCodeToLanguageNameMapper(BuildContext context) => {
      "ar": context.locale.arabic,
      "en": context.locale.english,
      "fa": context.locale.farsi,
      "hi": context.locale.hindi,
    };
