import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:whatsapp_clone/core/extensions/context_extension.dart';
import 'package:whatsapp_clone/features/chat/models/chat_model.dart';
import 'package:whatsapp_clone/features/chat/view/chat_details_screen/chat_details_screen.dart';

import '../../../../../core/resources/app_gaps.dart';
import '../../../../../core/theme/app_colors.dart';

class ChatListWidget extends StatelessWidget {
  const ChatListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: ChatModel.chatList.length,
      separatorBuilder: (context, index) => verticalSpace(10.h),
      itemBuilder: (context, index) {
        final chat = ChatModel.chatList[index];
        return ChatListCardWidget(chat: chat);
      },
    );
  }
}

class ChatListCardWidget extends StatelessWidget {
  final ChatModel chat;
  const ChatListCardWidget({super.key, required this.chat});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.to(ChatDetailsScreen(chat: chat));
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25.r,
              backgroundColor: AppColors.darkGreyColor,
              child: Text(
                chat.name[0].toUpperCase(),
                style: TextStyle(color: Colors.white, fontSize: 18.sp),
              ),
            ),
            horizontalSpace(15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        chat.name,
                        style: context.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        DateFormat("hh:mm a").format((chat.lastMessageTime)),
                        style: context.textTheme.bodySmall?.copyWith(
                          color: AppColors.darkGreyColor,
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          chat.lastMessage,
                          style: context.textTheme.bodyMedium?.copyWith(
                            color: AppColors.darkGreyColor,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      if (chat.hasUnreadMessages)
                        Container(
                          padding: EdgeInsets.all(6.r),
                          decoration: BoxDecoration(
                            color: context.theme.primaryColor,
                            shape: BoxShape.circle,
                          ),
                          child: Text(
                            2.toString(), // Replace with actual unread count
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
