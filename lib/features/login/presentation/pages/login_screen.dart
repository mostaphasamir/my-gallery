import 'package:flutter/material.dart';
import 'package:my_gallery/core/extentions/dimensions.dart';
import 'package:my_gallery/core/utils/app_text_style.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../shared/presentation/widgets/default_background_image.dart';
import '../widgets/blur_container.dart';
import '../widgets/login_button.dart';
import '../widgets/login_ttf.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultBackgroundImage(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(AppStrings.myGallery,style: AppTextStyle.segoe50darkGrey700,textAlign: TextAlign.center,),
                40.hs,
                BlurContainer(
                  child: Column(
                    children: [
                      Text(AppStrings.login ,style:  AppTextStyle.segoe30darkGrey700,) ,
                      38.hs,
                      const DefaultLoginTTF(
                        hintText: AppStrings.userName,
                      ),
                      38.hs,
                      const DefaultLoginTTF(
                        hintText: AppStrings.password,
                      ),
                      38.hs,
                      LoginButton(
                        text: AppStrings.submit,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
