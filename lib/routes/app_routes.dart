import 'package:dart_ground_frontend/screens/home/view.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(initialLocation: '/home', routes: [
  GoRoute(
    path: '/home',
    builder: (context, state) => const HomeView(),
  ),
]);
