import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_gallery/config/app_routes.dart';
import 'package:my_gallery/core/extentions/dimensions.dart';
import 'package:my_gallery/core/helper/custom_image_view.dart';
import 'package:my_gallery/core/local_storage/user_local_storage.dart';
import 'package:my_gallery/core/size/app_radius.dart';
import 'package:my_gallery/core/size/app_width.dart';
import 'package:my_gallery/core/utils/app_colors.dart';
import 'package:my_gallery/core/utils/app_text_style.dart';
import 'package:my_gallery/generated/app_assets.dart';

import '../../../../core/helper/show_dialog.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../shared/presentation/widgets/default_background_image.dart';
import '../widgets/default_home_button.dart';
import '../widgets/upload_dialog.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: DefaultBackgroundImage(
        assetsPath: AppAssets.imagesHomeBackGround,
        child: Column(
          children: [
            26.hs,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                27.ws,
                Text(
                  "${AppStrings.welcome}\n Mina",
                  style: AppTextStyle.baloo32darkGrey500,
                ),
                const Spacer(),
                CustomImageView(
                  imagePath: AppAssets.imagesProfile,
                  width: AppWidth.w66,
                  height: AppWidth.w66,
                ),
                31.ws,
              ],
            ),
            44.hs,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DefaultHomeButton(
                  title: AppStrings.logout,
                  svgPath: AppAssets.svgLogout,
                  onTap: () {
                    UserLocalStorage().removeUser();
                    Navigator.pushNamedAndRemoveUntil(
                        context, AppRoutes.loginScreen, (route) => false);
                  },
                ),
                DefaultHomeButton(
                  title: AppStrings.upload,
                  svgPath: AppAssets.svgUpload,
                  onTap: () {
                    showAppDialog(
                      context,
                      child: const UploadDialogWidget(),
                    );
                  },
                ),
              ],
            ),
            43.hs,
            Expanded(
              child: GridView.builder(
                itemCount: 30,
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: AppWidth.w28),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 25,
                  mainAxisSpacing: 25,
                  childAspectRatio: 1 / 1,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: AppColors.white,
                        borderRadius: BorderRadius.circular(AppRadius.r20),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.black.withOpacity(0.25),
                            offset: const Offset(0, 4),
                            blurRadius: 8,
                            // spreadRadius: 4,
                          )
                        ]),
                    child: CustomImageView(
                      radius: BorderRadius.circular(AppRadius.r20,),
                      url:
                          "https://images.pexels.com/photos/60597/dahlia-red-blossom-bloom-60597.jpeg",
                      fit: BoxFit.fill,
                      placeholder: (context, p1) {
                        return Center(child: CircularProgressIndicator());
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
