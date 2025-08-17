import 'package:flutter/material.dart';

class StoryProgressIndicator extends StatelessWidget {
  final Animation<double> animation;
  final bool isActive;

  const StoryProgressIndicator({
    super.key,
    required this.animation,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return LinearProgressIndicator(
          value: animation.value,
          backgroundColor: Colors.white.withOpacity(0.3),
          valueColor: const AlwaysStoppedAnimation(Colors.white),
          minHeight: 2,
        );
      },
    );
  }
}
