import 'dart:math';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/resources/app_gaps.dart';
import 'package:whatsapp_clone/core/theme/app_colors.dart';
import 'package:whatsapp_clone/features/updates/model/update_model.dart';
import 'package:intl/intl.dart';

class StoryBorderPainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final double gapWidth;
  final int segments;
  final double segmentAngle;

  StoryBorderPainter({
    required this.color,
    required this.strokeWidth,
    required this.gapWidth,
    required this.segments,
    required this.segmentAngle,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2 - strokeWidth / 2;
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    for (var i = 0; i < segments; i++) {
      final startAngle = i * segmentAngle + gapWidth / radius;
      final sweepAngle = segmentAngle - (2 * gapWidth / radius);
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startAngle,
        sweepAngle,
        false,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
