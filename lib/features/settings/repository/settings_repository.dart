import 'dart:developer';

import 'package:flutter/material.dart';
import '../../../core/data/local/get_storage.dart';
import '../../../core/data/local/local_keys.dart';

class SettingsLocalRepo {
  ThemeMode themeMode() {
    final index = GetStorageHandler.getLocalData(key: LocalKeys.theme);

    if (index != null) {
      return ThemeMode.values[index];
    } else {
      return ThemeMode.system;
    }
  }

  Future<void> updateThemeMode(ThemeMode theme) async {
    GetStorageHandler.setLocalData(key: LocalKeys.theme, value: theme.index);

    log("Updated Theme =========== ${theme.index}");
  }
}
