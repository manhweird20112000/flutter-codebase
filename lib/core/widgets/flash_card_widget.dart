import 'package:flutter/material.dart';
import 'package:flutter_codebase/core/theme/app_radius.dart';
import 'package:flutter_codebase/core/theme/app_spacing.dart';
import 'package:flutter_codebase/core/theme/app_typography.dart';
import 'package:flutter_svg/svg.dart';

class FlashCardWidget extends StatelessWidget {
  const FlashCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFF9768FE),
              borderRadius: AppRadius.brXL,
            ),
            child: Padding(
              padding: EdgeInsets.all(AppSpacing.md),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'What are the chances',
                  style: AppTypography.textTheme.headlineMedium?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: AppSpacing.sm,
            top: AppSpacing.sm,
            child: IconButton(
              onPressed: () {
                print('play sound');
              },
              icon: SvgPicture.asset(
                'assets/icons/ic_volume.svg',
                colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
