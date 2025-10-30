import 'package:flutter/material.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:theme_local_sample/application/theme/theme_notifier.dart';

/// Manages the current theme mode (light/dark)
final themeNotifierProvier = StateNotifierProvider<ThemeNotifier, ThemeMode>((
  ref,
) {
  return ThemeNotifier();
});
