import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/resources/app_gaps.dart';
import 'package:whatsapp_clone/core/theme/app_colors.dart';
import 'package:whatsapp_clone/features/updates/model/update_model.dart';
import 'package:whatsapp_clone/features/updates/view/widgets/story_progress_indicator_widget.dart';

class StoryViewerScreen extends StatefulWidget {
  final UpdateModel update;

  const StoryViewerScreen({super.key, required this.update});

  @override
  State<StoryViewerScreen> createState() => _StoryViewerScreenState();
}

class _StoryViewerScreenState extends State<StoryViewerScreen>
    with TickerProviderStateMixin {
  late PageController _pageController;
  late List<AnimationController> _animationControllers;
  int _currentIndex = 0;
  bool _isPaused = false;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _initializeAnimationControllers();
    _startCurrentAnimation();
  }

  void _initializeAnimationControllers() {
    _animationControllers = List.generate(
      widget.update.stores.length,
      (index) =>
          AnimationController(duration: const Duration(seconds: 4), vsync: this)
            ..addStatusListener((status) {
              if (status == AnimationStatus.completed) {
                _goToNextStory();
              }
            }),
    );
  }

  void _startCurrentAnimation() {
    _animationControllers[_currentIndex].forward();
  }

  void _resetCurrentAnimation() {
    _animationControllers[_currentIndex].reset();
  }

  void _pauseCurrentAnimation() {
    _animationControllers[_currentIndex].stop();
    _isPaused = true;
  }

  void _resumeCurrentAnimation() {
    if (_isPaused) {
      _animationControllers[_currentIndex].forward();
      _isPaused = false;
    }
  }

  void _goToNextStory() {
    if (_currentIndex < widget.update.stores.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.pop(context);
    }
  }

  void _goToPreviousStory() {
    if (_currentIndex > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.pop(context);
    }
  }

  @override
  void dispose() {
    for (var controller in _animationControllers) {
      controller.dispose();
    }
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTapDown: (details) {
          final screenWidth = MediaQuery.of(context).size.width;
          if (details.localPosition.dx < screenWidth / 2) {
            _goToPreviousStory();
          } else {
            _goToNextStory();
          }
        },
        onLongPressStart: (_) => _pauseCurrentAnimation(),
        onLongPressEnd: (_) => _resumeCurrentAnimation(),
        child: Stack(
          children: [
            PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _resetCurrentAnimation();
                  _currentIndex = index;
                  _startCurrentAnimation();
                });
              },
              children: widget.update.stores.map((story) {
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(story),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }).toList(),
            ),
            _buildTopBar(),
          ],
        ),
      ),
    );
  }

  Widget _buildTopBar() {
    return Positioned(
      top: 50,
      left: 16,
      right: 16,
      child: Column(
        children: [
          Row(
            children: List.generate(widget.update.stores.length, (index) {
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: StoryProgressIndicator(
                    animation: _animationControllers[index],
                    isActive: index == _currentIndex,
                  ),
                ),
              );
            }),
          ),
          horizontalSpace(16),
          Row(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.darkGreyColor,
                radius: 20,

                backgroundImage: NetworkImage(
                  widget.update.user.profilePictureUrl ?? '',
                ),
              ),
              horizontalSpace(12),

              Text(
                widget.update.user.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.close, color: Colors.white),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
