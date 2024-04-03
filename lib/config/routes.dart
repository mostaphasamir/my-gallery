import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class Routes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    var args = routeSettings.arguments;
    switch (routeSettings.name) {

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