# 🌗 Theme & Language Changer App

A clean, modern **Flutter** app built using **Riverpod**, **Material 3**, and **Flutter Localization** (`gen-l10n`).  
It demonstrates how to switch between **Light/Dark themes** and **multiple languages (English 🇬🇧 & Bangla 🇧🇩)** dynamically —  
with user preferences **persisted using `shared_preferences`**.

---

## 📱 Screenshots

| Dark Mode | Light Mode |
|------------|-------------|
| ![Dark Theme](screenshots/dark.png) | ![Light Theme](screenshots/light.png) |

---

## 🚀 Features

✅ Dynamic **theme switching** (Light / Dark)  
✅ **System theme detection** on first launch  
✅ Persistent theme choice using **SharedPreferences**  
✅ Dynamic **language switching** (`en` / `bn`)  
✅ Persistent locale using **SharedPreferences**  
✅ Flutter **`gen-l10n`** with `.arb` localization files  
✅ **BuildContext extension** for easy access:
```dart
Text(context.locale.changeLanguage)
