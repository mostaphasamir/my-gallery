import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_gallery/core/extentions/dimensions.dart';
import 'package:my_gallery/core/helper/toast.dart';
import 'package:my_gallery/core/utils/app_text_style.dart';
import 'package:my_gallery/features/login/domain/use_cases/login_use_case.dart';
import 'package:my_gallery/features/login/presentation/manager/login_cubit.dart';

import '../../../../config/app_routes.dart';
import '../../../../core/helper/show_loading_dialog.dart';
import '../../../../core/service/service_locator.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../shared/presentation/widgets/default_background_image.dart';
import '../widgets/blur_container.dart';
import '../widgets/login_button.dart';
import '../widgets/login_ttf.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    LoginCubit loginCubit = context.read<LoginCubit>();
    return Scaffold(
        body: BlocListener<LoginCubit, LoginState>(
          listener: (context, state) {
            if(state is LoginLoadingState){
              showLoadingDialog(context);
            }
            else if(state is LoginErrorState){
              Navigator.pop(context);
              ToastComponent.showDialog(state.errorMessage);
            } else if (state is LoginSuccessState){
              Navigator.pop(context);
              Navigator.pushNamedAndRemoveUntil(context, AppRoutes.home, (route) => false);
            }else if(state is LoginInvalidCredntials){
              ToastComponent.showDialog(AppStrings.invalidCredentials);
            }
          },
          child: DefaultBackgroundImage(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppStrings.myGallery,
                      style: AppTextStyle.segoe50darkGrey700,
                      textAlign: TextAlign.center,
                    ),
                    40.hs,
                    BlurContainer(
                      child: Column(
                        children: [
                          Text(
                            AppStrings.login,
                            style: AppTextStyle.segoe30darkGrey700,
                          ),
                          38.hs,
                          DefaultLoginTTF(
                            hintText: AppStrings.userName,
                            controller: emailController,
                          ),
                          38.hs,
                          DefaultLoginTTF(
                            hintText: AppStrings.password,
                            controller: passwordController,
                          ),
                          38.hs,
                          LoginButton(
                            text: AppStrings.submit,
                            onTap: () {
                              loginCubit.login(
                                loginParameters: LoginParameters(
                                  email: emailController.text.trim(),
                                  password: passwordController.text,
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
