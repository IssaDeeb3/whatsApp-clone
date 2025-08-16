import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/extensions/context_extension.dart';
import 'package:whatsapp_clone/core/resources/app_gaps.dart';
import 'package:whatsapp_clone/core/resources/app_spaces.dart';
import 'package:whatsapp_clone/core/theme/app_colors.dart';
import 'package:whatsapp_clone/features/chat/view/widgets/chat_tab_bar_widget.dart';

import '../../../core/theme/app_text_styles.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: AppSpaces.appPadding),
      children: [
        SearchBar(
          hintText: 'Ask Meta AI Or Search',
          leading: Icon(
            Icons.search,
            color: context.isDark
                ? AppColors.darkSearchBarGreyColor
                : AppColors.lightSearchBarGreyColor,
          ),
        ),
        verticalSpace(10),
        ChatTabBarWidget(),
      ],
    );
  }
}
