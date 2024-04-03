
import 'package:my_gallery/core/network/api_constant.dart';
import 'package:my_gallery/core/network/http_helper.dart';
import 'package:my_gallery/features/login/data/data_sources/base_login_remote_data_source.dart';
import 'package:my_gallery/features/login/data/models/login_model.dart';
import 'package:my_gallery/features/login/domain/entities/login.dart';
import 'package:my_gallery/features/login/domain/use_cases/login_use_case.dart';

class LoginRemoteDataSource extends BaseLoginRemoteDataSource {


  @override
  Future<Login> login(LoginParameters parameters) async{
    final result = await httpHelper.post(path: ApiConstant.login,body: {
      "email":parameters.email,
      "password":parameters.password,
    });
return LoginModel.fromJson(result);
  }

}