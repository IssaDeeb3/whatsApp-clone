import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/core/extensions/context_extension.dart';
import 'package:whatsapp_clone/core/theme/app_colors.dart';
import 'package:whatsapp_clone/features/settings/view_model/settings_view_model.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Consumer<SettingsVM>(
      builder: (context, settingsVM, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Settings', style: context.textTheme.labelLarge),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context),
            ),
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
          ),
          body: Column(
            children: [
              ListTile(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: context.theme.scaffoldBackgroundColor,
                        title: Text(
                          'Choose Theme',
                          style: context.textTheme.titleMedium,
                        ),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: ThemeMode.values.map((themeMode) {
                            return RadioListTile<ThemeMode>(
                              activeColor: AppColors.primaryColor,
                              title: Text(
                                themeMode.name,
                                style: context.textTheme.labelSmall,
                              ),
                              value: themeMode,
                              groupValue: settingsVM.themeMode,
                              onChanged: (value) {
                                settingsVM.changeAppMode(value);
                                Navigator.pop(context);
                              },
                            );
                          }).toList(),
                        ),
                      );
                    },
                  );
                },
                leading: Icon(
                  context.isDark ? Icons.dark_mode : Icons.sunny,
                  color: context.isDark ? Colors.white : Colors.black,
                ),
                title: Text(
                  'Theme',
                  style: context.textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  settingsVM.themeMode.name,
                  style: context.textTheme.labelSmall,
                ),
              ),
            ],
          ),
        );
      },
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
