import 'package:flutter/material.dart';
import 'package:flutter_codebase/core/theme/app_radius.dart';
import 'package:flutter_codebase/core/theme/app_spacing.dart';
import 'package:flutter_codebase/core/theme/app_typography.dart';

class DeckWidget extends StatelessWidget {
  final Deck deck;
  const DeckWidget({super.key, required this.deck});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 160,
          width: 200,
          decoration: BoxDecoration(
            color: Color(0xFF6338C2), // Darker purple for background
            borderRadius: AppRadius.brXL,
          ),
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Container(
              decoration: BoxDecoration(
                color: Color(
                  0xFFF3EFFF,
                ), // Slightly off-white for the background card surface
                borderRadius: AppRadius.brLG,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFF9768FE),
              borderRadius: AppRadius.brXL,
              border: BoxBorder.all(
                color: Colors.white.withValues(alpha: 0.1),
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: Color(
                        0xFF794FD8,
                      ), // Darker purple for icon background
                      borderRadius: AppRadius.brMD,
                    ),
                    child: const Icon(
                      Icons.shopping_bag_rounded,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                  SizedBox(height: AppSpacing.md),
                  Text(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    deck.title,
                    style: AppTypography.textTheme.bodyMedium?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: AppSpacing.xs),
                  RichText(
                    text: TextSpan(
                      children: [
                        // TextSpan(
                        //   text: r'$ ',
                        //   style: AppTypography.textTheme.bodyMedium?.copyWith(
                        //     color: Colors.white.withOpacity(0.8),
                        //     fontWeight: FontWeight.w600,
                        //   ),
                        // ),
                        TextSpan(
                          text: deck.amount.toString(),
                          style: AppTypography.textTheme.headlineSmall
                              ?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Deck {
  final String title;
  final double amount;

  const Deck({required this.title, this.amount = 0.0});
}
