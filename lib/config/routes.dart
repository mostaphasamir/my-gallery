import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_gallery/config/app_routes.dart';
import 'package:nb_utils/nb_utils.dart';

import '../core/service/service_locator.dart';
import '../features/home/presentation/pages/home_screen.dart';
import '../features/login/presentation/manager/login_cubit.dart';
import '../features/login/presentation/pages/login_screen.dart';

class Routes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    var args = routeSettings.arguments;
    switch (routeSettings.name) {
      case AppRoutes.loginScreen:
        return routeBuilder(
          BlocProvider(
            create: (context) => sl<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );

      case AppRoutes.home:
        return routeBuilder(const HomeScreen());
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
