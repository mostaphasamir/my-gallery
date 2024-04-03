import 'dart:io';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';

class LoadingDialogWidget extends StatelessWidget {
  const LoadingDialogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: AppColors.white,
          child: Platform.isIOS
              ? const CupertinoActivityIndicator(
            radius: 6,
          )
              : SizedBox(
            width: 30.r,
            height: 30.r,
            child: const CircularProgressIndicator(
              strokeWidth: 2.5,
            ),
          ),
        )
      ],
    );
  }
}
