import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/core/extensions/context_extension.dart';
import 'package:whatsapp_clone/core/resources/app_gaps.dart';
import 'package:whatsapp_clone/core/resources/app_spaces.dart';
import 'package:whatsapp_clone/core/resources/asstes.dart';
import 'package:whatsapp_clone/core/theme/app_colors.dart';
import 'package:whatsapp_clone/features/chat/models/message_model.dart';
import 'package:whatsapp_clone/features/chat/view/chat_details_screen/widgets/message_widget.dart';
import 'package:whatsapp_clone/features/chat/view_model/chat_view_model.dart';
import '../../models/chat_model.dart';

class ChatDetailsScreen extends StatelessWidget {
  final ChatModel chat;

  const ChatDetailsScreen({super.key, required this.chat});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ChatVM(chat),
      child: Consumer<ChatVM>(
        builder: (context, chatVM, _) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (chatVM.scrollController.hasClients) {
              chatVM.scrollController.jumpTo(
                chatVM.scrollController.position.maxScrollExtent,
              );
            }
          });
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: Row(
                children: [
                  InkWell(
                    onTap: () => context.back(),
                    child: const Icon(Icons.arrow_back),
                  ),
                  horizontalSpace(5),
                  Container(
                    width: 40.w,
                    height: 40.h,
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
                  Text(
                    chat.user.name,
                    style: context.textTheme.labelSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              actions: const [
                Icon(Icons.videocam_outlined),
                SizedBox(width: 10),
                Icon(Icons.call),
                SizedBox(width: 10),
                Icon(Icons.more_vert),
                SizedBox(width: 5),
              ],
            ),
            body: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned.fill(
                  child: Image.asset(
                    context.isDark ? Assets.darkChatBg : Assets.lightChatBg,
                    opacity: AlwaysStoppedAnimation(context.isDark ? .6 : 0.17),
                    fit: BoxFit.cover,
                  ),
                ),
                AnimatedList(
                  key: chatVM.listKey,
                  controller: chatVM.scrollController,
                  padding: EdgeInsets.only(
                    right: AppSpaces.appPadding,
                    left: AppSpaces.appPadding,
                    bottom: 80.h,
                  ),
                  initialItemCount: chatVM.messages.length,
                  itemBuilder: (context, index, animation) {
                    final message = chatVM.messages[index];
                    return SizeTransition(
                      sizeFactor: animation,
                      child: MessageWidget(message: message),
                    );
                  },
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 20.h,
                    horizontal: 8.w,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: chatVM.controller,
                          onChanged: chatVM.onTextChanged,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: context.isDark
                                ? AppColors.darkSearchBarGreyColor
                                : AppColors.whiteColor,
                            hintText: 'Type a message',
                            hintStyle: context.textTheme.labelMedium?.copyWith(
                              color: context.isDark
                                  ? AppColors.lightSearchBarGreyColor
                                  : AppColors.darkSearchBarGreyColor,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none,
                            ),
                            prefixIcon: const Icon(
                              Icons.sticky_note_2_outlined,
                            ),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: const [
                                  Icon(Icons.attach_file),
                                  SizedBox(width: 10),
                                  Icon(Icons.camera_alt_outlined),
                                  SizedBox(width: 8),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      horizontalSpace(10),
                      GestureDetector(
                        onTap: chatVM.isTyping ? chatVM.sendMessage : null,
                        child: CircleAvatar(
                          backgroundColor: AppColors.primaryColor,
                          radius: 22.r,
                          child: Icon(
                            chatVM.isTyping ? Icons.send : Icons.mic,
                            color: context.isDark ? Colors.black : Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
