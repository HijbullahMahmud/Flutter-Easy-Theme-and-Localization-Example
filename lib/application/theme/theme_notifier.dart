import 'package:flutter/material.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _themePrefKey = "user_selected_theme_mode";

class ThemeNotifier extends StateNotifier<ThemeMode>{
  ThemeNotifier(): super(ThemeMode.system){
    _loadTheme();
  }

  Future<void> _loadTheme()async{
    final prefs = await SharedPreferences.getInstance();
    final savedValue = prefs.getString(_themePrefKey);

    if(savedValue == "light"){
      state = ThemeMode.light;
    }else if(savedValue == "dark"){
      state = ThemeMode.dark;
    }else{
      state = ThemeMode.system;
    }
  }

  Future<void> toggleTheme()async{
    if(state == ThemeMode.light){
      await _saveTheme(ThemeMode.dark);
    }else{
      await _saveTheme(ThemeMode.light);
    }
  }

  //Save theme choice to shared preferences
  Future<void> _saveTheme(ThemeMode mode)async{
    final prefs = await SharedPreferences.getInstance();
    state = mode;
    await prefs.setString(_themePrefKey, mode == ThemeMode.light ? "light": "dark");
  }
}