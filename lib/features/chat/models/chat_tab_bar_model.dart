import 'package:flutter/material.dart';

class ChatTabBarModel {
  final String title;
  final IconData? icon;

  ChatTabBarModel({required this.title, this.icon});

  static List<ChatTabBarModel> get chatTabBarList => [
    ChatTabBarModel(title: "All"),
    ChatTabBarModel(title: "Unread 3"),
    ChatTabBarModel(title: "Groups 5"),
    ChatTabBarModel(title: "", icon: Icons.add_circle_outline_rounded),
  ];
}
