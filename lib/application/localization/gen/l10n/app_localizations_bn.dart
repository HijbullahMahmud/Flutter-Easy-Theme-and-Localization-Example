// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appTitle => 'থিম ও ভাষা পরিবর্তনকারী';

  @override
  String get changeTheme => 'থিম পরিবর্তন করুন';

  @override
  String get changeLanguage => 'ভাষা পরিবর্তন করুন';

  @override
  String get switchToDark => 'ডার্ক থিম চালু করুন';

  @override
  String get switchToLight => 'লাইট থিম চালু করুন';

  @override
  String currentLanguage(Object lang) {
    return 'বর্তমান ভাষা: $lang';
  }
}
