import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:whatsappsendnumber/features/home/framework/presentation/page/home_page.dart';
import 'package:whatsappsendnumber/features/splash/framework/page/splash_page.dart';

import 'path.dart';

final GoRouter router = GoRouter(
  observers: [FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance)],
  routes: <RouteBase>[
    GoRoute(
      path: initialization,
      builder: (BuildContext context, GoRouterState state) {
        return const ProviderScope(child: SplashPage());
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
            return const ProviderScope(child: HomePage());
          },
        )
      ],
    ),
  ],
);
