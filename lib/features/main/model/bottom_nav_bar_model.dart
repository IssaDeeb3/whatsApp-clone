import 'package:flutter/material.dart';

class BottomNavItemModel {
  final int index;
  final IconData icon;
  final String label;

  const BottomNavItemModel({
    required this.index,
    required this.icon,
    required this.label,
  });

  static List<BottomNavItemModel> bottomNavItems = const [
    BottomNavItemModel(index: 0, icon: Icons.message, label: "Chats"),
    BottomNavItemModel(index: 1, icon: Icons.update, label: "Updates"),
    BottomNavItemModel(index: 2, icon: Icons.group, label: "Communities"),
    BottomNavItemModel(index: 3, icon: Icons.call, label: "Calls"),
  ];
}
