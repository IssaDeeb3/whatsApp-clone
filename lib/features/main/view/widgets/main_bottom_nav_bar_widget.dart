import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      onTap: (index) {
        bottomNavBarVM.updateIndex(index);
      },

      enableFeedback: false,
      currentIndex: bottomNavBarVM.currentIndex,
      items: BottomNavItemModel.bottomNavItems.map((item) {
        final isSelected = bottomNavBarVM.currentIndex == item.index;
        return BottomNavigationBarItem(
          icon: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            margin: const EdgeInsets.only(bottom: 5),
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            decoration: BoxDecoration(
              color: isSelected
                  ? isDarkMode
                        ? AppColors.bottomNavBarSelectedDarkContainerColor
                        : AppColors.bottomNavBarSelectedLightContainerColor
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Image.asset(
                  isSelected ? item.selectedIcon : item.unSelectedIcon,
                  width: 35,
                  height: 35,
                  color: isSelected
                      ? isDarkMode
                            ? AppColors.bottomNavBarSelectedDarkIconColor
                            : AppColors.bottomNavBarSelectedLightIconColor
                      : isDarkMode
                      ? Colors.white
                      : Colors.black,
                ),
                if (item.index == 0)
                  CircleAvatar(
                    backgroundColor: AppColors.primaryColor,
                    child: Text(
                      '3',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    radius: 8.r,
                  ),
              ],
            ),
          ),
          label: item.label,
        );
      }).toList(),
    );
  }
}
