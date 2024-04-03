import 'package:flutter/material.dart';
import 'package:my_gallery/config/app_routes.dart';
import 'package:nb_utils/nb_utils.dart';

import '../features/login/presentation/pages/login_screen.dart';

class Routes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    var args = routeSettings.arguments;
    switch (routeSettings.name) {
      case AppRoutes.loginScreen :
        return routeBuilder(const LoginScreen());
      default:
        return routeBuilder(
          const Scaffold(),
        );
    }
  }

  static routeBuilder(
      Widget widget, {
        PageRouteAnimation? pageRouteAnimation,
        Duration? duration,
      }) =>
      buildPageRoute(
          widget,
          pageRouteAnimation ?? PageRouteAnimation.SlideBottomTop,
          duration ?? 50.milliseconds);
}