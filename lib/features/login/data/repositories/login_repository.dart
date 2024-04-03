import 'package:dartz/dartz.dart';
import 'package:my_gallery/core/errors/exceptions.dart';
import 'package:my_gallery/core/errors/failure.dart';
import 'package:my_gallery/features/login/domain/entities/login.dart';
import 'package:my_gallery/features/login/domain/repositories/base_login_repository.dart';
import 'package:my_gallery/features/login/domain/use_cases/login_use_case.dart';

import '../data_sources/base_login_remote_data_source.dart';

class LoginRepository extends BaseLoginRepository {

  final BaseLoginRemoteDataSource baseLoginRemoteDataSource ;


  LoginRepository({required this.baseLoginRemoteDataSource});

  @override
  Future<Either<Failure, Login>> login(LoginParameters parameters) async{
    try{
      final result = await baseLoginRemoteDataSource.login(parameters);
      return Right(result);
    }on ServerException catch (e){
      return Left(ServerFailure(e.errorMessageModel.errorMessage));
    }
  }

}