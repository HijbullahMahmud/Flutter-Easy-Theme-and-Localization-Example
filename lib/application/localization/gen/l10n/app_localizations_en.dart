// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Theme & Language Changer';

  @override
  String get changeTheme => 'Change Theme';

  @override
  String get changeLanguage => 'Change Language';

  @override
  String get switchToDark => 'Switch to Dark Theme';

  @override
  String get switchToLight => 'Switch to Light Theme';

  @override
  String currentLanguage(Object lang) {
    return 'Current Language: $lang';
  }
}
