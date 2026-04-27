import 'package:go_router/go_router.dart';
import 'package:flutter_codebase/ui/features/counter/views/counter_view.dart';

final routerConfig = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const CounterView(),
    ),
  ],
);
