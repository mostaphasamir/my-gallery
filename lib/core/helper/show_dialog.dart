import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_gallery/core/utils/app_strings.dart';

import '../size/app_height.dart';
import '../size/app_radius.dart';
import '../size/app_width.dart';
import '../utils/app_colors.dart';

Future<Object?> showAppDialog(
  context, {
  required Widget child,
}) =>
    showGeneralDialog(
      barrierLabel: AppStrings.appName,
      barrierColor:Colors.transparent,
      transitionDuration: const Duration(milliseconds: 250),
      context: context,
      barrierDismissible: true,
      pageBuilder: (_, __, ___) {
        return child;
      },
      transitionBuilder: (_, anim, __, child) {
        return SlideTransition(
          position: anim
              .drive(Tween(begin: const Offset(0, 1), end: const Offset(0, 0))),
          child: Center(
            child : ClipRRect(
              borderRadius: BorderRadius.circular(AppRadius.r32),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                // Adjust sigmaX and sigmaY for blur amount
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    vertical: AppHeight.h48,
                    horizontal: AppWidth.w84,
                  ),
                  margin: EdgeInsets.symmetric(horizontal: AppWidth.w42),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppRadius.r32),
                    color: AppColors.white.withOpacity(0.3),
                    border: Border.all(color: AppColors.white),
                  ),
                  child: Material(color: Colors.transparent, child: child),
                ),
              ),
            ),
          ),
        );



      },
    );
