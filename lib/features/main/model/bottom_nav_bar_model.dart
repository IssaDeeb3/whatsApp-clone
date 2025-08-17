import 'package:flutter/material.dart';

import '../../../core/resources/asstes.dart';

class BottomNavItemModel {
  final int index;
  final String selectedIcon;
  final String unSelectedIcon;
  final String label;

  const BottomNavItemModel({
    required this.index,
    required this.selectedIcon,
    required this.unSelectedIcon,
    required this.label,
  });

  static List<BottomNavItemModel> bottomNavItems = const [
    BottomNavItemModel(
      index: 0,
      selectedIcon: Assets.chatFillIcon,
      unSelectedIcon: Assets.chatOutlineIcon,
      label: "Chats",
    ),
    BottomNavItemModel(
      index: 1,
      selectedIcon: Assets.updatesFillIcon,
      unSelectedIcon: Assets.updatesOutlineIcon,
      label: "Updates",
    ),
    BottomNavItemModel(
      index: 2,
      selectedIcon: Assets.comFillIcon,
      unSelectedIcon: Assets.comOutlineIcon,
      label: "Communities",
    ),
    BottomNavItemModel(
      index: 3,
      selectedIcon: Assets.callsFillIcon,
      unSelectedIcon: Assets.callsOutlineIcon,
      label: "Calls",
    ),
  ];
}
