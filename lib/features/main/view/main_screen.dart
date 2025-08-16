import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/features/calls/view/calls_screen.dart';
import 'package:whatsapp_clone/features/communities/view/communities_screen.dart';
import 'package:whatsapp_clone/features/main/model/bottom_nav_bar_model.dart';
import 'package:whatsapp_clone/features/main/view/widgets/main_app_bar_widget.dart';
import 'package:whatsapp_clone/features/main/view/widgets/main_bottom_nav_bar_widget.dart';
import 'package:whatsapp_clone/features/main/view_model/bottom_nav_bar_view_model.dart';
import 'package:whatsapp_clone/features/updates/view/updates_screen.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../chat/view/chat_screen.dart';
import '../model/floating_action_button_model.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomNavBarVM = context.watch<BottomNavBarVM>();
    final currentIndex = bottomNavBarVM.currentIndex;

    return Scaffold(
      appBar: MainAppBar(title: selectedScreenTitle(currentIndex)),
      body: selectedScreen(currentIndex),
      bottomNavigationBar: const MainBottomNabBarWidget(),
      floatingActionButton: currentIndex == 2
          ? null
          : FloatingActionButtonModel.floatingActionButtons
                .map((button) {
                  if (currentIndex == 3) {
                    return FloatingActionButton.extended(
                      label: Text(
                        button.title ?? '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onPressed: () {},

                      icon: Icon(button.icon),
                    );
                  }
                  return FloatingActionButton(
                    onPressed: () {},
                    child: Icon(button.icon),
                  );
                })
                .elementAt(currentIndex),
    );
  }

  Widget selectedScreen(int index) {
    switch (index) {
      case 0:
        return const ChatScreen();
      case 1:
        return const CommunitiesScreen();
      case 2:
        return const UpdatesScreen();
      case 3:
        return const CallsScreen();
      default:
        return const ChatScreen();
    }
  }

  String selectedScreenTitle(int index) {
    switch (index) {
      case 0:
        return 'WhatsApp';
      case 1:
        return 'Updates';
      case 2:
        return 'Communities';
      case 3:
        return 'Calls';
      default:
        return 'Chats';
    }
  }
}
