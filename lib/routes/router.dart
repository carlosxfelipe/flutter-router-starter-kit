import 'package:go_router/go_router.dart';
import 'package:flutter_router_starter_kit/screens.dart';

class NoTransitionPage extends CustomTransitionPage {
  NoTransitionPage({required super.child})
    : super(
        transitionDuration: Duration.zero,
        reverseTransitionDuration: Duration.zero,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return child;
        },
      );
}

final GoRouter router = GoRouter(
  routes: [
    // GoRoute(
    //   path: '/',
    //   pageBuilder:
    //       (context, state) => NoTransitionPage(child: const LoginScreen()),
    // ),
    // GoRoute(
    //   path: '/register',
    //   pageBuilder:
    //       (context, state) => NoTransitionPage(child: const RegisterScreen()),
    // ),
    GoRoute(
      // path: '/home',
      path: '/',
      pageBuilder:
          (context, state) => NoTransitionPage(child: const HomeScreen()),
    ),
    GoRoute(
      path: '/orders',
      pageBuilder:
          (context, state) => NoTransitionPage(child: const OrdersScreen()),
    ),
    GoRoute(
      path: '/profile',
      pageBuilder:
          (context, state) => NoTransitionPage(child: const ProfileScreen()),
    ),
  ],
);
