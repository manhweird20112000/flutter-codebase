import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_codebase/core/theme/app_colors.dart';
import 'package:flutter_codebase/core/theme/app_spacing.dart';
import 'package:flutter_codebase/core/theme/app_radius.dart';
import 'package:flutter_codebase/features/home/presentation/widgets/action_item_bottom_sheet.dart';

class BottomSheetAction extends StatelessWidget {
  const BottomSheetAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(
        bottom: Platform.isIOS ? AppSpacing.lg : AppSpacing.md,
        left: AppSpacing.md,
        right: AppSpacing.md,
      ),
      child: Container(
        width: double.infinity,
        height: 400,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: AppRadius.brXXL,
        ),
        child: Padding(
          padding: EdgeInsetsGeometry.all(AppSpacing.md),
          child: Column(
            children: [
              ActionItemBottomSheet(
                title: 'Create Deck',
                description: 'Create a new deck',
                icon: 'assets/icons/ic_plus.svg',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
