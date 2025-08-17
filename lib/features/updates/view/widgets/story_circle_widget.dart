import 'dart:math';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/theme/app_colors.dart';
import 'package:whatsapp_clone/features/updates/model/update_model.dart';
import 'package:whatsapp_clone/features/updates/view/widgets/story_border_painter.dart';

class StoryCircle extends StatelessWidget {
  final UpdateModel update;
  final double borderWidth = 2.5;
  final double gapWidth = 2.0;

  const StoryCircle({super.key, required this.update});

  @override
  Widget build(BuildContext context) {
    final hasStories = update.stores.isNotEmpty;
    final storyCount = update.stores.length;
    final segmentAngle = storyCount > 1 ? (2 * pi) / storyCount : 2 * pi;

    return SizedBox(
      child: Stack(
        alignment: Alignment.center,
        children: [
          if (hasStories)
            CustomPaint(
              size: const Size(56, 56),
              painter: StoryBorderPainter(
                color: Colors.green,
                strokeWidth: borderWidth,
                gapWidth: gapWidth,
                segments: storyCount,
                segmentAngle: segmentAngle,
              ),
            ),
          CircleAvatar(
            radius: 25,
            backgroundColor: AppColors.darkGreyColor,
            backgroundImage: NetworkImage(update.user.profilePictureUrl ?? ''),
          ),
        ],
      ),
    );
  }
}
