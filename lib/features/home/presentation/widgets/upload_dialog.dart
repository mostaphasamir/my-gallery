import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_gallery/core/extentions/dimensions.dart';
import 'package:my_gallery/core/helper/custom_image_view.dart';
import 'package:my_gallery/core/utils/app_strings.dart';
import 'package:my_gallery/core/utils/app_text_style.dart';

import '../../../../core/size/app_height.dart';
import '../../../../core/size/app_radius.dart';
import '../../../../core/size/app_width.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../generated/app_assets.dart';

class UploadDialogWidget extends StatelessWidget {
  const UploadDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _DialogButton(
          backGroundColor: AppColors.blueBeery,
          pngPath: AppAssets.pngGallery,
          title: AppStrings.gallery,
          onTap: () {},
        ),
        44.hs,
        _DialogButton(
          backGroundColor: AppColors.babyBlue,
          pngPath: AppAssets.pngCamera,
          title: AppStrings.camera,
          onTap: () {},
        ),
      ],
    );
    // return ClipRRect(
    //   borderRadius: BorderRadius.circular(AppRadius.r32),
    //   child: BackdropFilter(
    //     filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
    //     // Adjust sigmaX and sigmaY for blur amount
    //     child: Container(
    //       width: double.infinity,
    //       padding: EdgeInsets.symmetric(
    //         vertical: AppHeight.h48,
    //       ),
    //       margin: EdgeInsets.symmetric(horizontal: AppWidth.w42),
    //       decoration: BoxDecoration(
    //         borderRadius: BorderRadius.circular(AppRadius.r32),
    //         color: AppColors.white.withOpacity(0.4),
    //       ),
    //       child: Column(
    //         mainAxisSize: MainAxisSize.min,
    //         children: [
    //           _DialogButton(
    //             backGroundColor: AppColors.blueBeery,
    //             svgPath: AppAssets.svgGallery,
    //             title: AppStrings.gallery,
    //             onTap: () {},
    //           ),
    //           44.hs,
    //           _DialogButton(
    //             backGroundColor: AppColors.babyBlue,
    //             svgPath: AppAssets.svgCamera,
    //             title: AppStrings.camera,
    //             onTap: () {},
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );

  }
}

class _DialogButton extends StatelessWidget {
  final Color backGroundColor;

  final String pngPath;

  final String title;

  final void Function()? onTap;

  const _DialogButton(
      {super.key,
      required this.backGroundColor,
      required this.pngPath,
      required this.title,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: AppHeight.h15,horizontal: AppWidth.w8),
        decoration: BoxDecoration(
          color: backGroundColor,
          borderRadius: BorderRadius.circular(
            AppRadius.r20,
          ),
        ),
        child: Row(
          children: [
            CustomImageView(
              imagePath: pngPath,
              height: AppHeight.h58,
            ),
            6.ws,
            Text(
              title,
              style: AppTextStyle.segoe27darkGrey700,
            )
          ],
        ),
      ),
    );
  }
}
