import '../../domain/entities/login.dart';
import '../../domain/use_cases/login_use_case.dart';

abstract class BaseLoginRemoteDataSource {

  Future<Login> login(LoginParameters parameters);
}