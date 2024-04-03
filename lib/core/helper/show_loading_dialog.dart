import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery/core/size/app_height.dart';
import 'package:my_gallery/core/utils/app_strings.dart';
import 'package:my_gallery/features/shared/presentation/widgets/loading_dialog_widget.dart';
import 'package:nb_utils/nb_utils.dart';

import '../utils/app_colors.dart';

Future<Object?> showLoadingDialog(context) =>
    showGeneralDialog(
      barrierLabel: AppStrings.appName,
      barrierDismissible: false,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: const Duration(milliseconds: 250),
      context: context,
      pageBuilder: (_, __, ___) {
        return const LoadingDialogWidget();
      },
      transitionBuilder: (_, anim, __, child) {
        return SlideTransition(
          position: anim
              .drive(Tween(begin: const Offset(0, 1), end: const Offset(0, 0))),
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                        height: AppHeight.h75,
                        width: AppHeight.h75,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 16.h),
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(25)),
                        child: const Material(
                            color: AppColors.white,
                            child: LoadingDialogWidget()))
                    .paddingSymmetric(horizontal: 16.w),
              ],
            ),
          ),
        );
      },
    );
