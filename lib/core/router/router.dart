import 'package:go_router/go_router.dart';
import 'package:flutter_codebase/features/home/presentation/views/home_view.dart';

final routerConfig = GoRouter(
  initialLocation: '/',
  routes: [GoRoute(path: '/', builder: (context, state) => const HomeView())],
);
