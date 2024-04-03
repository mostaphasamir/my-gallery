import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_gallery/core/service/service_locator.dart';
import 'package:nb_utils/nb_utils.dart';

import 'app.dart';
import 'blocobserve.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await initialize();
  ServiceLocator.init();

  runApp(const MyApp());
}



