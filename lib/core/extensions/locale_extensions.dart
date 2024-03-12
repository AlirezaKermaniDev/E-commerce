import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension LocaleExtentions on BuildContext {
  AppLocalizations get locale => AppLocalizations.of(this)!;
  bool get isLtrLocale =>
      AppLocalizations.of(this)!.localeName == "en" ||
      AppLocalizations.of(this)!.localeName == "hi";
}
