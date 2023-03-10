import 'package:navigation/main.dart';
import 'package:flutter/material.dart';
import 'package:navigation/pages/home_detail.dart';
import 'package:navigation/pages/home_view.dart';
import 'package:navigation/pages/profile_view.dart';

import 'navigator_routes.dart';

mixin NavigatorCustom<T extends MyApp> on Widget {
  Route<dynamic>? onGenerateRoute(RouteSettings routeSettings){
    if (routeSettings.name?.isEmpty ?? true) {
      return _navigateToNormal(const HomeView());
    }

    final _routes = routeSettings.name == NavigatorRoutes.initial
        ? NavigateRoutes.profile
        : NavigateRoutes.values.byName(routeSettings.name!.substring(1));

    switch (_routes) {
      case NavigateRoutes.profile:
        return _navigateToNormal(const ProfileView());
      case NavigateRoutes.home:
        return _navigateToNormal(const HomeView());
      case NavigateRoutes.detail:
        final _id = routeSettings.arguments;
        return _navigateToNormal(
            HomeDetail(
              id: _id is String ? _id : null,
            ),
            isFullScreenDialog: true);
    }
  }
  Route<dynamic>? _navigateToNormal(Widget child, {bool? isFullScreenDialog}) {
    return MaterialPageRoute(
        fullscreenDialog: isFullScreenDialog ?? false,
        builder: (context) {
          return child;
        });
  }
}