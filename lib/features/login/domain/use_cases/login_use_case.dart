import 'package:dartz/dartz.dart';
import 'package:my_gallery/core/errors/failure.dart';
import 'package:my_gallery/core/usecase/base_usecase.dart';

import '../entities/login.dart';
import '../repositories/base_login_repository.dart';

class LoginUseCase extends BaseUseCase<Login,LoginParameters> {

  final BaseLoginRepository baseLoginRepository ;


  LoginUseCase({required this.baseLoginRepository});

  @override
  Future<Either<Failure, Login>> call(LoginParameters parameters) {
    return baseLoginRepository.login(parameters);
  }

}

class LoginParameters {
  final String email ;
  final String password ;

  LoginParameters({required this.email,required this.password});
}