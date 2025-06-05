import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presentation/screens/splash_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final _slideTransitionTween = Tween<Offset>(
  begin: const Offset(0.0, 1.0),
  end: Offset.zero,
);

final GoRouter routerConfig = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: "/splash",
  routes: <RouteBase>[
    GoRoute(
      name: "splash",
      path: "/splash",
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const SplashScreen(),
        transitionsBuilder: _buildSlideTransition,
      ),
    ),
  ],
);

Widget _buildSlideTransition(
  BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  Widget child,
) {
  return SlideTransition(
    position: _slideTransitionTween.animate(CurvedAnimation(
      parent: animation,
      curve: Curves.easeInOut,
    )),
    child: child,
  );
}
