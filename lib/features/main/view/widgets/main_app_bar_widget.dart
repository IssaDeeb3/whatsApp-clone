import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/core/extensions/context_extension.dart';
import 'package:whatsapp_clone/core/theme/app_colors.dart';
import 'package:whatsapp_clone/core/theme/app_text_styles.dart';
import 'package:whatsapp_clone/features/settings/view/settings_screen.dart';
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
          title: Text(
            title,
            style: context.theme.appBarTheme.titleTextStyle?.copyWith(
              color: currentIndex == 0 ? null : context.theme.primaryColor,
              fontWeight: currentIndex == 0 ? FontWeight.w600 : FontWeight.w200,
            ),
          ),

          actions: [
            if (currentIndex == 0)
              IconButton(
                icon: const Icon(Icons.camera_alt_outlined),
                onPressed: () {},
              ),
            if (currentIndex == 1 || currentIndex == 3)
              IconButton(icon: const Icon(Icons.search), onPressed: () {}),

            PopupMenuButton(
              color: context.theme.scaffoldBackgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),

              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    value: '1',
                    child: Text(
                      'New group',
                      style: context.textTheme.labelSmall,
                    ),
                  ),
                  PopupMenuItem(
                    value: '2',
                    child: Text(
                      'New Community',
                      style: context.textTheme.labelSmall,
                    ),
                  ),
                  PopupMenuItem(
                    value: '3',
                    child: Text(
                      'New broadcast',
                      style: context.textTheme.labelSmall,
                    ),
                  ),
                  PopupMenuItem(
                    value: '4',
                    child: Text(
                      'Link devices',
                      style: context.textTheme.labelSmall,
                    ),
                  ),
                  PopupMenuItem(
                    value: '5',
                    child: Text('Starred', style: context.textTheme.labelSmall),
                  ),
                  PopupMenuItem(
                    value: '6',
                    child: Text(
                      'Read all',
                      style: context.textTheme.labelSmall,
                    ),
                  ),

                  PopupMenuItem(
                    onTap: () {
                      context.to(SettingsScreen());
                    },
                    value: '7',
                    child: Text(
                      'Settings',
                      style: context.textTheme.labelSmall,
                    ),
                  ),
                ];
              },
            ),

            // IconButton(icon: const Icon(Icons.more_vert), onPressed: () {
            //
            // }),
          ],
        );
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
