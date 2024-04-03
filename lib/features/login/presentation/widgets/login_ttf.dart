import 'package:flutter/material.dart';

import '../../../../core/size/app_height.dart';
import '../../../../core/size/app_radius.dart';
import '../../../../core/size/app_width.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class DefaultLoginTTF extends StatelessWidget {
  final String hintText ;
  final TextEditingController? controller ;
  const DefaultLoginTTF({super.key, required this.hintText, this.controller});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: AppHeight.h46,
      child: TextFormField(
        controller:controller ,
        decoration: InputDecoration(
          hintText: hintText,
          fillColor: AppColors.white,
          filled: true,
          hintStyle: AppTextStyle.segoe16mediumGrey500 ,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(AppRadius.r22),
          ),
          contentPadding: EdgeInsetsDirectional.only(bottom: AppHeight.h13,start: AppWidth.w21,end: AppWidth.w21),
        ),
      ),
    );
  }
}
