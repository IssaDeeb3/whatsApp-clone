import 'package:flutter/material.dart';

class ChatTabBarModel {
  final int index;

  final String title;
  final IconData? icon;

  ChatTabBarModel({required this.title, required this.index, this.icon});

  static List<ChatTabBarModel> get chatTabBarList => [
    ChatTabBarModel(title: "All", index: 0),
    ChatTabBarModel(title: "Unread 3", index: 1),
    ChatTabBarModel(title: "Favorites", index: 2),
    ChatTabBarModel(title: "Groups 5", index: 3),
    ChatTabBarModel(title: "", icon: Icons.add, index: 4),
  ];
}
