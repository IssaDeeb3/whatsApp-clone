import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_clone/core/extensions/context_extension.dart';
import 'package:whatsapp_clone/core/resources/app_gaps.dart';
import 'package:whatsapp_clone/core/resources/app_spaces.dart';
import 'package:whatsapp_clone/core/theme/app_colors.dart';
import 'package:whatsapp_clone/features/chat/view/chat_screen/widgets/chat_list_widget.dart';
import 'package:whatsapp_clone/features/chat/view/chat_screen/widgets/chat_tab_bar_widget.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        verticalSpace(10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSpaces.appPadding),

          child: SearchBar(
            hintText: 'Ask Meta AI Or Search',
            leading: Icon(
              Icons.search,
              color: context.isDark
                  ? AppColors.darkSearchBarGreyColor
                  : AppColors.lightSearchBarGreyColor,
            ),
          ),
        ),
        verticalSpace(20),
        ChatTabBarWidget(),
        verticalSpace(20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpaces.appPadding),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.archive_outlined,
                        color: AppColors.darkGreyColor,
                        size: 25.r,
                      ),

                      horizontalSpace(20),
                      Text(
                        'Archived',
                        style: context.textTheme.labelMedium?.copyWith(
                          color: AppColors.darkGreyColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),

                  Text(
                    '6',
                    style: context.textTheme.labelMedium?.copyWith(
                      color: AppColors.darkGreyColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              verticalSpace(20),
              ChatListWidget(),
            ],
          ),
        ),
      ],
    );
  }
}
