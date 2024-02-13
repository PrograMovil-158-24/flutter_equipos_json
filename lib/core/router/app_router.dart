import 'package:flutter_equipos_futbol/presentation/pages/home_page/home_page.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, GoRouterState state) {
        return const HomePage();
      }
    ),
  ],
);