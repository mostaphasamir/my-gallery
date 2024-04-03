import 'package:flutter/material.dart';
import 'package:my_gallery/core/extentions/dimensions.dart';
import 'package:my_gallery/core/helper/custom_image_view.dart';
import 'package:my_gallery/core/size/app_height.dart';
import 'package:my_gallery/core/size/app_radius.dart';
import 'package:my_gallery/core/size/app_width.dart';
import 'package:my_gallery/core/utils/app_colors.dart';
import 'package:my_gallery/core/utils/app_text_style.dart';

class DefaultHomeButton extends StatelessWidget {
  final String svgPath ;
  final String title ;
  final void Function()? onTap ;
  const DefaultHomeButton({super.key, required this.svgPath, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: AppHeight.h5,horizontal: AppWidth.w13),
        decoration: BoxDecoration(
          color: AppColors.white.withOpacity(0.57),
          borderRadius: BorderRadius.circular(AppRadius.r16)
        ),
        child: Row(
          children: [
            CustomImageView(
              svgPath: svgPath,
            ) ,
            9.ws ,
            Text(title,style: AppTextStyle.baloo20darkGrey500,)
          ],
        ),
      ),
    );
  }
}
