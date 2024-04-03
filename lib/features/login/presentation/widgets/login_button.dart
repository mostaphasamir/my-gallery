import 'package:flutter/material.dart';
import 'package:my_gallery/core/size/app_height.dart';
import 'package:my_gallery/core/size/app_radius.dart';
import 'package:my_gallery/core/utils/app_colors.dart';

import '../../../../core/utils/app_text_style.dart';

class LoginButton extends StatelessWidget {
  final String text ;
  final void Function()? onTap ;
  const LoginButton({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: AppHeight.h11),
        decoration: BoxDecoration(
          color: AppColors.lightBlue , 
          borderRadius: BorderRadius.circular(AppRadius.r10)
        ),
        alignment: Alignment.center,
        child: Text(text,style: AppTextStyle.segoe18white700,),
      ),
    );
  }
}
