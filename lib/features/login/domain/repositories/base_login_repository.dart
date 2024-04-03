import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../entities/login.dart';
import '../use_cases/login_use_case.dart';

abstract class BaseLoginRepository {

  Future<Either<Failure, Login>> login(LoginParameters parameters);


}