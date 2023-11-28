import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter/main.dart';
import 'package:gorouter/pages/detail.page.dart';
import 'package:gorouter/pages/home.page.dart';

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'details',
          builder: (BuildContext context, GoRouterState state) {
            return const DetailsScreen();
          },
        ),
      ],
    ),
  ],
);