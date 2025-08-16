import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/theme/app_colors.dart';

import '../data/local/get_storage.dart';
import '../data/local/local_keys.dart';

extension ThemeExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);
}

extension NavigationExtensions on BuildContext {
  Future<void> to(Widget widget) =>
      Navigator.of(this).push(MaterialPageRoute(builder: (_) => widget));

  void toReplacement(Widget widget) => Navigator.of(
    this,
  ).pushReplacement(MaterialPageRoute(builder: (_) => widget));

  void toNamed(String routeName) => Navigator.of(this).pushNamed(routeName);

  void toNamedReplacement(String routeName) =>
      Navigator.of(this).pushReplacementNamed(routeName);

  void back() => Navigator.of(this).pop();
}

extension DarkMode on BuildContext {
  bool get isDark {
    final bool isDarkMode =
        Theme.of(this).brightness == Brightness.dark ||
        GetStorageHandler.getLocalData(key: LocalKeys.theme) == 2;

    return isDarkMode;
  }
}
