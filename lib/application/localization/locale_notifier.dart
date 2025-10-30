import 'package:flutter/material.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _localePrefKey = 'user_selected_locale';

class LocaleNotifier extends StateNotifier<Locale> {
  LocaleNotifier() : super(const Locale("en")) {
    _loadLocale();
  }

  Future<void> _loadLocale() async {
    final prefs = await SharedPreferences.getInstance();
    final savedValue = prefs.getString(_localePrefKey);
    state = Locale(savedValue ?? "en");
  }

  Future<void> toggleLocale() async {
    final newLocale = state.languageCode == 'en'
        ? const Locale('bn')
        : const Locale('en');
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_localePrefKey, newLocale.languageCode);
    state = newLocale;
  }
}
