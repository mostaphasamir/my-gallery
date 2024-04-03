import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery/config/routes.dart';

import 'config/app_routes.dart';
import 'core/utils/app_strings.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428.0, 926.0),
      builder: (_, child) {
        return const MaterialApp(
          title: AppStrings.appName,
          debugShowCheckedModeBanner: false,
          onGenerateRoute: Routes.onGenerateRoute,
          initialRoute: AppRoutes.loginScreen,
        );
      },
    );
  }
}