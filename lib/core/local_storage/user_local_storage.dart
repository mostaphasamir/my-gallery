import 'package:my_gallery/features/login/data/models/login_model.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../features/login/domain/entities/login.dart';

class UserLocalStorage{

  cacheUser(Login login)async {
    await setValue("user",loginToJson(login as LoginModel));
  }

  static Login ? get getUser {
    final userString = getStringAsync("user") ;
    if(userString==""){
      return null ;
    }
    return  loginFromJson(getStringAsync("user"));
  }

  removeUser(){
    removeKey("user");
  }
}