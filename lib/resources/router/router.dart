import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:whatsappsendnumber/features/splash/presentation/page/splash_page.dart';

import 'path.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: initialization,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashPage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: login,
          builder: (BuildContext context, GoRouterState state) {
            return Container(color: Colors.blue);
          },
        ),
        GoRoute(
          path: home,
          builder: (BuildContext context, GoRouterState state) {
            return Container(color: Colors.blue);
          },
        )
      ],
    ),
  ],
);
