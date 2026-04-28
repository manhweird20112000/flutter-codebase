import 'package:flutter/material.dart';
import 'package:flutter_codebase/core/theme/app_colors.dart';
import 'package:flutter_codebase/core/theme/app_spacing.dart';
import 'package:flutter_codebase/core/theme/app_radius.dart';
import 'package:flutter_codebase/features/home/presentation/widgets/action_item_bottom_sheet.dart';

class BottomSheetAction extends StatelessWidget {
  const BottomSheetAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.only(
          topLeft: AppRadius.rXL,
          topRight: AppRadius.rXL,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withValues(alpha: 0.2),
            blurRadius: 20,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.md,
            vertical: AppSpacing.sm,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Drag Handle
              Center(
                child: Container(
                  width: 40,
                  height: 4,
                  margin: const EdgeInsets.only(bottom: AppSpacing.md),
                  decoration: BoxDecoration(
                    color: AppColors.white.withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
              ActionItemBottomSheet(
                title: 'Create deck',
                description: 'Create a deck with the given name',
                icon: 'assets/icons/ic_folder.svg',
                onTap: () => print('create deck'),
              ),
              const SizedBox(height: AppSpacing.sm),
              ActionItemBottomSheet(
                title: 'Generate Deck with AI',
                description: 'Generate a deck with AI',
                icon: 'assets/icons/ic_folder.svg',
                onTap: () => print('create deck'),
              ),
              const SizedBox(height: AppSpacing.sm),
              ActionItemBottomSheet(
                title: 'Import Deck',
                description: 'Import a deck from file',
                icon: 'assets/icons/ic_folder.svg',
                onTap: () => print('create deck'),
              ),
              const SizedBox(height: AppSpacing.sm),
              ActionItemBottomSheet(
                title: 'Create folder',
                description: 'Organize your decks into folders',
                icon: 'assets/icons/ic_folder.svg',
                onTap: () => print('create deck'),
              ),
              const SizedBox(height: AppSpacing.md),
            ],
          ),
        ),
      ),
    );
  }
}
