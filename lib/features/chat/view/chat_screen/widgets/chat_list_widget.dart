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
      padding: EdgeInsets.only(bottom: 50.h),
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
            Container(
              width: 50.w,
              height: 50.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.lightGreyColor,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(chat.user.profilePictureUrl ?? ''),
              ),
            ),
            horizontalSpace(10),

            Flexible(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    chat.user.name,
                    style: context.textTheme.labelMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  verticalSpace(5),
                  Row(
                    children: [
                      if (chat.isFromMe) ...[
                        Icon(
                          Icons.check,
                          color: AppColors.darkGreyColor,
                          size: 16.r,
                        ),
                        horizontalSpace(5),
                      ],
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
                    ],
                  ),
                ],
              ),
            ),

            horizontalSpace(8),

            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  DateFormat("hh:mm a").format(chat.lastMessageTime),
                  style: context.textTheme.bodySmall?.copyWith(
                    color: chat.isUnread
                        ? AppColors.floatingActionButtonColor
                        : AppColors.darkGreyColor,
                    fontWeight: chat.isUnread
                        ? FontWeight.w600
                        : FontWeight.normal,
                  ),
                ),
                verticalSpace(10),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (chat.isPinned)
                      Icon(
                        Icons.push_pin,
                        color: AppColors.darkGreyColor,
                        size: 20.r,
                      ),
                    if (chat.isPinned) horizontalSpace(5),
                    if (chat.hasUnreadMessages)
                      CircleAvatar(
                        backgroundColor: AppColors.floatingActionButtonColor,
                        radius: 10.r,
                        child: Text(
                          chat.unreadCount.toString(),
                          style: context.textTheme.labelSmall?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
