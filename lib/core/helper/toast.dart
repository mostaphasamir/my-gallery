import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class ToastComponent {
  static showDialog(String msg,
      {duration = 0,
      ToastGravity? gravity = ToastGravity.CENTER,
      Color? color}) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: duration != 0 ? duration : Toast.LENGTH_SHORT,
      gravity: gravity,
      // backgroundColor:color?? AppColors.darkGrey,
      // textColor: AppColors.white,

    );
  }
}
