import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/core/theme/app_colors.dart';

import '../../model/bottom_nav_bar_model.dart';
import '../../view_model/bottom_nav_bar_view_model.dart';

class MainBottomNabBarWidget extends StatelessWidget {
  const MainBottomNabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomNavBarVM = context.watch<BottomNavBarVM>();
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    
    return BottomNavigationBar(
      useLegacyColorScheme: true,
      onTap: (index) {
        bottomNavBarVM.updateIndex(index);
      },
      currentIndex: bottomNavBarVM.currentIndex,
      items: BottomNavItemModel.bottomNavItems.map((item) {
        final isSelected = bottomNavBarVM.currentIndex == item.index;
        return BottomNavigationBarItem(
          icon: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            margin: const EdgeInsets.only(bottom: 5),
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            decoration: BoxDecoration(
              color: isSelected
                  ? isDarkMode 
                      ? AppColors.bottomNavBarSelectedDarkContainerColor
                      : AppColors.bottomNavBarSelectedLightContainerColor
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Icon(
              item.icon,
              color: isSelected
                  ? isDarkMode 
                      ? AppColors.bottomNavBarSelectedDarkIconColor
                      : AppColors.bottomNavBarSelectedLightIconColor
                  : isDarkMode 
                      ? Colors.white
                      : Colors.black,
            ),
          ),
          label: item.label,
        );
      }).toList(),
    );
  }
}
