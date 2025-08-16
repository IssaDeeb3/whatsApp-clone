import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';

import '../repository/settings_repository.dart';

class SettingsVM extends ChangeNotifier {
  final SettingsLocalRepo settingsLocalRepo;

  SettingsVM({required this.settingsLocalRepo});

  //! Load Settings ===================================
  Future<void> loadSettings() async {
    _themeMode = settingsLocalRepo.themeMode();

    log("Loaded Theme =========== ${_themeMode}");
    notifyListeners();
  }

  ThemeMode _themeMode = ThemeMode.system;

  ThemeMode get themeMode => _themeMode;

  //! Update Theme  ===================================

  void changeAppMode(ThemeMode? newThemeMode) async {
    if (newThemeMode == null) return;
    if (newThemeMode == _themeMode) return;
    _themeMode = newThemeMode;

    log("New Theme =========== ${_themeMode}");
    notifyListeners();
    await settingsLocalRepo.updateThemeMode(newThemeMode);
  }
}
