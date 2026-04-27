import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_codebase/domain/models/flashcard.dart';

part 'flashcard_view_model.freezed.dart';
part 'flashcard_view_model.g.dart';

@freezed
class FlashcardState with _$FlashcardState {
  const factory FlashcardState({
    @Default([]) List<Flashcard> cards,
    @Default(0) int currentIndex,
    @Default(false) bool isFlipped,
  }) = _FlashcardState;
}

@riverpod
class FlashcardViewModel extends _$FlashcardViewModel {
  @override
  FlashcardState build() {
    // Initial mock data
    final initialCards = [
      const Flashcard(id: '1', front: 'What is Flutter?', back: 'Google\'s UI toolkit for building natively compiled applications.'),
      const Flashcard(id: '2', front: 'What is Riverpod?', back: 'A reactive caching and state management framework for Flutter.'),
      const Flashcard(id: '3', front: 'What is Freezed?', back: 'Code generation for immutable classes that has a simple syntax.'),
    ];
    
    return FlashcardState(cards: initialCards);
  }

  void nextCard() {
    if (state.currentIndex < state.cards.length - 1) {
      state = state.copyWith(
        currentIndex: state.currentIndex + 1,
        isFlipped: false,
      );
    }
  }

  void previousCard() {
    if (state.currentIndex > 0) {
      state = state.copyWith(
        currentIndex: state.currentIndex - 1,
        isFlipped: false,
      );
    }
  }

  void flipCard() {
    state = state.copyWith(isFlipped: !state.isFlipped);
  }
}
