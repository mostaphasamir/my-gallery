import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../core/size/app_height.dart';
import '../../../../core/size/app_radius.dart';
import '../../../../core/size/app_width.dart';
import '../../../../core/utils/app_colors.dart';

class BlurContainer extends StatelessWidget {
  final Widget? child ;
  const BlurContainer({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppRadius.r32),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust sigmaX and sigmaY for blur amount
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
              horizontal: AppWidth.w31,
              vertical: AppHeight.h48
          ),
          margin: EdgeInsets.symmetric(horizontal: AppWidth.w42),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppRadius.r32),
            color: AppColors.white.withOpacity(0.4),
          ),
          child: child ,
        ),
      ),
    );
  }
}
