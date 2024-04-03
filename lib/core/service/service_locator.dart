import 'package:get_it/get_it.dart';

import '../../features/login/data/data_sources/base_login_remote_data_source.dart';
import '../../features/login/data/data_sources/login_remote_data_source.dart';
import '../../features/login/data/repositories/login_repository.dart';
import '../../features/login/domain/repositories/base_login_repository.dart';
import '../../features/login/domain/use_cases/login_use_case.dart';
import '../../features/login/presentation/manager/login_cubit.dart';
import '../network/http_helper.dart';

final sl = GetIt.instance ;

class ServiceLocator {
  static void init(){
    ///bloc
    sl.registerFactory(() => LoginCubit(loginUseCase: sl()));
    ///use case
    sl.registerLazySingleton(() => LoginUseCase(baseLoginRepository: sl()));
    ///repository
    sl.registerLazySingleton<BaseLoginRepository>(() => LoginRepository(baseLoginRemoteDataSource: sl()));

    ///data source

    sl.registerLazySingleton<BaseLoginRemoteDataSource>(() => LoginRemoteDataSource());

    ///helper
    sl.registerLazySingleton(() => HTTPHelper());
  }
}