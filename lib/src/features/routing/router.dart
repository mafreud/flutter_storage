import 'package:flutter/material.dart';
import 'package:flutter_storage/src/features/dashboard/dashboard_page.dart';
import 'package:flutter_storage/src/features/details/detail_page.dart';
import 'package:flutter_storage/src/features/file/file_model.dart';
import 'package:flutter_storage/src/features/upgrade/upgrade_page.dart';
import 'package:go_router/go_router.dart';

enum AppRoute { dashboard, detail, upgrade }

enum ParamsKey { fileId }

final GoRouter router = GoRouter(
  debugLogDiagnostics: true,
  routes: <GoRoute>[
    GoRoute(
        name: AppRoute.dashboard.name,
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const DashboardPage();
        },
        routes: [
          GoRoute(
            name: AppRoute.detail.name,
            path: 'detail/:fileId',
            builder: (context, state) => DetailPage(
              fileModel: state.extra as FileModel,
            ),
          ),
          GoRoute(
            name: AppRoute.upgrade.name,
            path: 'upgrade',
            builder: (context, state) => const UpgradePage(),
          ),
        ]),
  ],
);
