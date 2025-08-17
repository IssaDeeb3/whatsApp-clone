import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_clone/core/extensions/context_extension.dart';
import 'package:whatsapp_clone/core/resources/app_spaces.dart';
import 'package:whatsapp_clone/core/theme/app_colors.dart';
import '../../../models/chat_tab_bar_model.dart';

class ChatTabBarWidget extends StatefulWidget {
  const ChatTabBarWidget({super.key});

  @override
  State<ChatTabBarWidget> createState() => _ChatTabBarWidgetState();
}

class _ChatTabBarWidgetState extends State<ChatTabBarWidget> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: ChatTabBarModel.chatTabBarList.length,
      child: ClipRect(
        clipBehavior: Clip.none,
        child: TabBar(
          isScrollable: true,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          tabAlignment: TabAlignment.start,
          labelPadding: EdgeInsets.symmetric(horizontal: 1.5.w, vertical: 6.h),
          indicatorColor: Colors.transparent,
          dividerColor: Colors.transparent,
          padding: EdgeInsets.symmetric(horizontal: AppSpaces.appPadding),
          indicatorSize: TabBarIndicatorSize.label,
          tabs: ChatTabBarModel.chatTabBarList.map((tab) {
            final isSelected = tab.index == currentIndex;
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 6.h),
              margin: EdgeInsets.symmetric(horizontal: 2.w),
              decoration: BoxDecoration(
                color: isSelected
                    ? context.isDark
                          ? AppColors.darkChatTabBarSelectedColor
                          : AppColors.lightChatTabBarSelectedColor
                    : null,
                border: Border.all(
                  color: context.isDark
                      ? AppColors.darkChatTabBarBorderColor
                      : AppColors.lightChatTabBarBorderColor,
                ),
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: tab.icon != null
                  ? Icon(tab.icon, size: 20)
                  : Text(tab.title, style: TextStyle(fontSize: 14.sp)),
            );
          }).toList(),
        ),
      ),
    );
  }
}
