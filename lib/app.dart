import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery/config/routes.dart';
import 'package:my_gallery/core/local_storage/user_local_storage.dart';

import 'config/app_routes.dart';
import 'core/utils/app_strings.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428.0, 926.0),
      builder: (_, child) {
        return  MaterialApp(
          title: AppStrings.appName,
          debugShowCheckedModeBanner: false,
          onGenerateRoute: Routes.onGenerateRoute,
          initialRoute: UserLocalStorage.getUser == null ? AppRoutes.loginScreen:AppRoutes.home ,
        );
      },
    );
  }
}