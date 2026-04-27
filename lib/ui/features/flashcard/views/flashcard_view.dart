import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_codebase/generated/l10n/app_localizations.dart';
import 'package:flutter_codebase/ui/features/flashcard/view_models/flashcard_view_model.dart';
import 'package:flutter_codebase/ui/features/flashcard/views/widgets/flashcard_widget.dart';

class FlashcardView extends ConsumerWidget {
  const FlashcardView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(flashcardViewModelProvider);
    final notifier = ref.read(flashcardViewModelProvider.notifier);
    final l10n = AppLocalizations.of(context)!;

    if (state.cards.isEmpty) {
      return Scaffold(
        appBar: AppBar(title: Text(l10n.flashcards)),
        body: const Center(child: CircularProgressIndicator()),
      );
    }

    final currentCard = state.cards[state.currentIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.flashcards),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.grey.shade50, Colors.grey.shade200],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Text(
              '${state.currentIndex + 1} / ${state.cards.length}',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const Expanded(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: _AnimatedFlashcard(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 60, left: 40, right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _ActionButton(
                    onPressed: state.currentIndex > 0 ? notifier.previousCard : null,
                    icon: Icons.arrow_back_ios_new,
                    label: l10n.previous,
                  ),
                  _ActionButton(
                    onPressed: state.currentIndex < state.cards.length - 1
                        ? notifier.nextCard
                        : null,
                    icon: Icons.arrow_forward_ios,
                    label: l10n.next,
                    isPrimary: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AnimatedFlashcard extends ConsumerWidget {
  const _AnimatedFlashcard();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(flashcardViewModelProvider);
    final notifier = ref.read(flashcardViewModelProvider.notifier);
    final currentCard = state.cards[state.currentIndex];

    return FlashcardWidget(
      front: currentCard.front,
      back: currentCard.back,
      isFlipped: state.isFlipped,
      onTap: notifier.flipCard,
    );
  }
}

class _ActionButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final IconData icon;
  final String label;
  final bool isPrimary;

  const _ActionButton({
    required this.onPressed,
    required this.icon,
    required this.label,
    this.isPrimary = false,
  });

  @override
  Widget build(BuildContext context) {
    final color = isPrimary ? Colors.deepPurple : Colors.grey.shade700;
    
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton.filled(
          onPressed: onPressed,
          icon: Icon(icon),
          style: IconButton.styleFrom(
            backgroundColor: onPressed == null 
                ? Colors.grey.shade300 
                : color.withOpacity(0.1),
            foregroundColor: onPressed == null 
                ? Colors.grey.shade500 
                : color,
            padding: const EdgeInsets.all(16),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            color: onPressed == null ? Colors.grey.shade400 : color,
            fontWeight: FontWeight.w600,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
