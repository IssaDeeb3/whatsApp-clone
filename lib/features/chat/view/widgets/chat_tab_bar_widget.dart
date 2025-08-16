import 'package:flutter/material.dart';
import '../../models/chat_tab_bar_model.dart';

class ChatTabBarWidget extends StatelessWidget {
  const ChatTabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: ChatTabBarModel.chatTabBarList.length,
      child: TabBar(
        isScrollable: true,
        tabAlignment: TabAlignment.start,
        indicatorColor: Theme.of(context).primaryColor,
        labelColor: Theme.of(context).primaryColor,
        unselectedLabelColor: Colors.grey,
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: ChatTabBarModel.chatTabBarList.map((tab) {
          return Tab(
            child: tab.icon != null
                ? Icon(tab.icon, size: 20)
                : Text(tab.title, style: const TextStyle(fontSize: 14)),
          );
        }).toList(),
      ),
    );
  }
}
