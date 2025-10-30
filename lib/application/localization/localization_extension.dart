

import 'package:flutter/material.dart';

import 'gen/l10n/app_localizations.dart';
 

 /// Adds a convenient way to access localizations via `context.locale.key`
extension LocalizationExtension on BuildContext {
  AppLocalizations get locale => AppLocalizations.of(this)!;
}
