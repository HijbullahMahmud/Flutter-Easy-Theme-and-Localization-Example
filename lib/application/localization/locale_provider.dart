import 'package:flutter/material.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:theme_local_sample/application/localization/locale_notifier.dart';

final localeNotifierProvider = StateNotifierProvider<LocaleNotifier, Locale>((
  ref,
) {
  return LocaleNotifier();
});
