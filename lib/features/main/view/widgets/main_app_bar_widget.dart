import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/core/extensions/context_extension.dart';
import 'package:whatsapp_clone/core/theme/app_colors.dart';
import 'package:whatsapp_clone/core/theme/app_text_styles.dart';
import 'package:whatsapp_clone/features/settings/view_model/settings_view_model.dart';

import '../../view_model/bottom_nav_bar_view_model.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget>? actions;
  final String title;

  const MainAppBar({super.key, this.actions, required this.title});

  @override
  Widget build(BuildContext context) {
    final bottomNavBarVM = context.watch<BottomNavBarVM>();

    final currentIndex = bottomNavBarVM.currentIndex;
    return Consumer<SettingsVM>(
      builder: (context, settingsVM, child) {
        return AppBar(
          title: Column(
            children: [
              Text(
                title,
                style: context.theme.appBarTheme.titleTextStyle?.copyWith(
                  color: currentIndex == 0 ? null : context.theme.primaryColor,
                  fontWeight: currentIndex == 0
                      ? FontWeight.w600
                      : FontWeight.w200,
                ),
              ),
              DropdownButton(
                items: ThemeMode.values
                    .map((e) => DropdownMenuItem(value: e, child: Text(e.name)))
                    .toList(),
                onChanged: (value) {
                  settingsVM.changeAppMode(value);
                },
              ),
            ],
          ),

          actions: [
            IconButton(
              icon: const Icon(Icons.camera_alt_outlined),
              onPressed: () {},
            ),
            IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
          ],
        );
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     'Settings',
      //     style: AppTextStyles.heading.copyWith(
      //       color: isDarkMode ? Colors.white : Colors.black,
      //       fontSize: 20,
      //       fontWeight: FontWeight.w500,
      //     ),
      //   ),
      //   leading: IconButton(
      //     icon: const Icon(Icons.arrow_back),
      //     onPressed: () => Navigator.pop(context),
      //   ),
      // ),
      body: SizedBox(),

      // ListView(
      //   children: [
      //     const SizedBox(height: 20),
      //     ListTile(
      //       leading: const CircleAvatar(
      //         radius: 30,
      //         backgroundColor: Colors.grey,
      //         child: Icon(Icons.person, size: 40, color: Colors.white),
      //       ),
      //       title: Text('Your Name', style: AppTextStyles.chatTitle),
      //       subtitle: Text('Status message', style: AppTextStyles.chatSubtitle),
      //     ),
      //     const Divider(),
      //     ListTile(
      //       leading: Container(
      //         padding: const EdgeInsets.all(10),
      //         decoration: BoxDecoration(
      //           color: Colors.green[100],
      //           shape: BoxShape.circle,
      //         ),
      //         child: const Icon(Icons.key, color: AppColors.primaryColor),
      //       ),
      //       title: Text('Account', style: AppTextStyles.chatTitle),
      //       subtitle: Text(
      //         'Privacy, security, change number',
      //         style: AppTextStyles.chatSubtitle,
      //       ),
      //     ),
      //     ListTile(
      //       leading: Container(
      //         padding: const EdgeInsets.all(10),
      //         decoration: BoxDecoration(
      //           color: Colors.green[100],
      //           shape: BoxShape.circle,
      //         ),
      //         child: const Icon(Icons.chat, color: AppColors.primaryColor),
      //       ),
      //       title: Text('Chats', style: AppTextStyles.chatTitle),
      //       subtitle: Text(
      //         'Theme, wallpapers, chat history',
      //         style: AppTextStyles.chatSubtitle,
      //       ),
      //     ),
      //     ListTile(
      //       leading: Container(
      //         padding: const EdgeInsets.all(10),
      //         decoration: BoxDecoration(
      //           color: Colors.green[100],
      //           shape: BoxShape.circle,
      //         ),
      //         child: const Icon(
      //           Icons.notifications,
      //           color: AppColors.primaryColor,
      //         ),
      //       ),
      //       title: Text('Notifications', style: AppTextStyles.chatTitle),
      //       subtitle: Text(
      //         'Message, group & call tones',
      //         style: AppTextStyles.chatSubtitle,
      //       ),
      //     ),
      //     ListTile(
      //       leading: Container(
      //         padding: const EdgeInsets.all(10),
      //         decoration: BoxDecoration(
      //           color: Colors.green[100],
      //           shape: BoxShape.circle,
      //         ),
      //         child: const Icon(
      //           Icons.brightness_6,
      //           color: AppColors.primaryColor,
      //         ),
      //       ),
      //       title: Text('Theme', style: AppTextStyles.chatTitle),
      //       subtitle: Text(
      //         'Change app appearance',
      //         style: AppTextStyles.chatSubtitle,
      //       ),
      //       onTap: () => _showThemeDialog(context),
      //     ),
      //   ],
      // ),
    );
  }

  // void _showThemeDialog(BuildContext context) {
  //   final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
  //
  //   showDialog(
  //     context: context,
  //     builder: (context) {
  //       return StatefulBuilder(
  //         builder: (context, setState) {
  //           return AlertDialog(
  //             title: const Text('Choose Theme'),
  //             content: Column(
  //               mainAxisSize: MainAxisSize.min,
  //               children: [
  //                 RadioListTile<AppThemeMode>(
  //                   title: const Text('System default'),
  //                   value: AppThemeMode.system,
  //                   groupValue: themeProvider.themeMode,
  //                   onChanged: (value) {
  //                     setState(() {
  //                       themeProvider.setThemeMode(value!);
  //                     });
  //                   },
  //                 ),
  //                 RadioListTile<AppThemeMode>(
  //                   title: const Text('Light'),
  //                   value: AppThemeMode.light,
  //                   groupValue: themeProvider.themeMode,
  //                   onChanged: (value) {
  //                     setState(() {
  //                       themeProvider.setThemeMode(value!);
  //                     });
  //                   },
  //                 ),
  //                 RadioListTile<AppThemeMode>(
  //                   title: const Text('Dark'),
  //                   value: AppThemeMode.dark,
  //                   groupValue: themeProvider.themeMode,
  //                   onChanged: (value) {
  //                     setState(() {
  //                       themeProvider.setThemeMode(value!);
  //                     });
  //                   },
  //                 ),
  //               ],
  //             ),
  //             actions: [
  //               TextButton(
  //                 onPressed: () {
  //                   Navigator.of(context).pop();
  //                 },
  //                 child: const Text('OK'),
  //               ),
  //             ],
  //           );
  //         },
  //       );
  //     },
  //   );
  // }
}
