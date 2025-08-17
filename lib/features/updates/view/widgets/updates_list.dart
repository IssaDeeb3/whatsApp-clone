import 'dart:math';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/resources/app_gaps.dart';
import 'package:whatsapp_clone/core/theme/app_colors.dart';
import 'package:whatsapp_clone/features/updates/model/update_model.dart';
import 'package:intl/intl.dart';
import 'package:whatsapp_clone/features/updates/view/widgets/story_circle_widget.dart';
import 'package:whatsapp_clone/features/updates/view/widgets/story_viewer_screen.dart';

class UpdatesList extends StatelessWidget {
  const UpdatesList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final update = UpdateModel.updateList[index];
        return ListTile(
          leading: StoryCircle(update: update),
          title: Text(update.user.name),
          subtitle: Text(_formatTime(update.updateTime)),
          onTap: () => _showStoryViewer(context, update),
        );
      },
      itemCount: UpdateModel.updateList.length,
    );
  }

  String _formatTime(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);

    if (difference.inDays > 0) {
      return DateFormat('MMM dd').format(dateTime);
    } else if (difference.inHours > 0) {
      return '${difference.inHours}h ago';
    } else {
      return '${difference.inMinutes}m ago';
    }
  }

  void _showStoryViewer(BuildContext context, UpdateModel update) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            StoryViewerScreen(update: update),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
        transitionDuration: const Duration(milliseconds: 300),
      ),
    );
  }
}
