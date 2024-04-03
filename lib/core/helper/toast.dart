import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../utils/app_colors.dart';

class ToastComponent {
  static showDialog(String msg,
      {duration = 0,
      ToastGravity? gravity = ToastGravity.CENTER,
      Color? color}) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: duration != 0 ? duration : Toast.LENGTH_LONG,
      gravity: gravity,
      backgroundColor:color?? AppColors.darkGrey,
      textColor: AppColors.white,

    );
  }
}
