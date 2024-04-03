import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../../core/local_storage/user_local_storage.dart';
import '../../domain/use_cases/login_use_case.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginUseCase loginUseCase;

  LoginCubit({
    required this.loginUseCase,
  }) : super(LoginInitial());

  final UserLocalStorage userLocalStorage = UserLocalStorage();

  login({required LoginParameters loginParameters}) async {
    if(loginParameters.email.isEmpty || !loginParameters.email.validateEmail() ||loginParameters.password.isEmpty){
      emit(LoginInvalidCredntials());
      return ;
    }
    emit(LoginLoadingState());
    final result = await loginUseCase(loginParameters);
    result.fold((l) {
      emit(LoginErrorState(errorMessage: l.message));
    }, (r) {
      userLocalStorage.cacheUser(r);
      emit(LoginSuccessState());
    });
  }
}
