import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:whatsapp_clone/core/extensions/context_extension.dart';
import 'package:whatsapp_clone/core/theme/app_colors.dart';

import '../../../models/message_model.dart';

class MessageWidget extends StatelessWidget {
  final MessageModel message;
  const MessageWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final myMessageColor = context.isDark
        ? AppColors.darkMessageSenderColor
        : AppColors.lightMessageSenderColor;

    final otherMessageColor = context.isDark
        ? AppColors.darkMessageReceiverColor
        : AppColors.lightMessageReceiverColor;

    return Align(
      alignment: message.isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.7,
        ),
        margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          color: message.isMe ? myMessageColor : otherMessageColor,
          borderRadius: BorderRadius.only(
            topLeft: message.isMe ? const Radius.circular(10) : Radius.zero,
            topRight: message.isMe ? Radius.zero : const Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        child: Column(
          crossAxisAlignment: message.isMe
              ? CrossAxisAlignment.end
              : CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              message.text,
              style: context.textTheme.labelSmall?.copyWith(
                color: context.isDark ? Colors.white : Colors.black,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              DateFormat('hh:mm a').format(message.time),
              style: TextStyle(
                fontSize: 12,
                color: context.isDark ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
