import 'package:get_it/get_it.dart';

import '../network/http_helper.dart';

final sl = GetIt.instance ;

class ServiceLocator {
  static void init(){
    ///bloc
    ///use case
    ///repository


    ///data source

    ///helper
    sl.registerLazySingleton(() => HTTPHelper());
  }
}