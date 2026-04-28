import 'package:flutter/material.dart';
import 'package:flutter_codebase/core/theme/app_spacing.dart';
import 'package:flutter_codebase/core/widgets/deck_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_codebase/features/home/presentation/widgets/bottom_sheet_action.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  void _showBottomSheetAction(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return const BottomSheetAction();
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.md),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: AppSpacing.md,
              crossAxisSpacing: AppSpacing.md,
              childAspectRatio: 200 / 160,
            ),
            itemCount: 6,
            itemBuilder: (context, index) {
              return DeckWidget(
                deck: Deck(title: 'Deck $index', amount: 12345),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF9768FE),
        onPressed: () => _showBottomSheetAction(context),
        child: SvgPicture.asset(
          'assets/icons/ic_plus.svg',
          colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
        ),
      ),
    );
  }
}
