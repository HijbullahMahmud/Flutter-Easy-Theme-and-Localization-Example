import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:theme_local_sample/application/localization/locale_provider.dart';
import 'package:theme_local_sample/application/localization/localization_extension.dart';

import '../../application/theme/theme_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeNotifierProvier);

    return Scaffold(
      appBar: AppBar(title: Text(context.locale.appTitle), centerTitle: true),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 12,
          children: [
            ElevatedButton(
              onPressed: () async {
                // Toggle theme
                await ref.read(themeNotifierProvier.notifier).toggleTheme();
              },
              child: Text(
                themeMode == ThemeMode.light
                    ? context.locale.switchToDark
                    : context.locale.switchToLight,
              ),
            ),

            ElevatedButton(
              onPressed: () async {
                // Toggle theme
                await ref.read(localeNotifierProvider.notifier).toggleLocale();
              },
              child: Text(context.locale.changeLanguage),
            ),
          ],
        ),
      ),
    );
  }
}
