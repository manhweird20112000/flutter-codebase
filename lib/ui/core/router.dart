import 'package:go_router/go_router.dart';
import 'package:flutter_codebase/ui/features/counter/views/counter_view.dart';
import 'package:flutter_codebase/ui/features/flashcard/views/flashcard_view.dart';

final routerConfig = GoRouter(
  initialLocation: '/flashcards',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const CounterView(),
    ),
    GoRoute(
      path: '/flashcards',
      builder: (context, state) => const FlashcardView(),
    ),
  ],
);
