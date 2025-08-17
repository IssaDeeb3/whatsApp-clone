import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/extensions/context_extension.dart';

import '../../../core/resources/app_gaps.dart';
import '../../../core/resources/app_spaces.dart';
import '../../../core/resources/asstes.dart';
import '../../../core/shared/shared_widgets/image_widget.dart';

class CommunitiesScreen extends StatelessWidget {
  const CommunitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSpaces.appPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ImageWidget(imagePath: Assets.communitiesIcon),
          Text(
            'Stay Connected with a Community',
            textAlign: TextAlign.center,
            style: context.textTheme.labelLarge?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          verticalSpace(15),
          Text(
            'Communities bring memberstogetherin topic-based groups, and makeiteasytogetadmin announcements. Anycommunityyou\'readdedtowill appearhere.',
            style: context.textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          verticalSpace(30),

          SizedBox(
            width: context.screenWidth * 0.8,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Start your community",
                style: context.textTheme.labelSmall?.copyWith(
                  color: context.isDark ? Colors.black : Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
