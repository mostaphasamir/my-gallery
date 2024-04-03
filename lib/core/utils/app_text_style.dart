import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

class AppTextStyle {
  static TextStyle fontSize10 = TextStyle(fontSize: 10.sp);
  static TextStyle fontSize11 = TextStyle(fontSize: 11.sp);
  static TextStyle fontSize12 = TextStyle(fontSize: 12.sp);
  static TextStyle fontSize14 = TextStyle(fontSize: 14.sp);
  static TextStyle fontSize16 = TextStyle(fontSize: 16.sp);
  static TextStyle fontSize18 = TextStyle(fontSize: 18.sp);
  static TextStyle fontSize20 = TextStyle(fontSize: 20.sp);
  static TextStyle fontSize22 = TextStyle(fontSize: 22.sp);
  static TextStyle fontSize24 = TextStyle(fontSize: 24.sp);
  static TextStyle fontSize25 = TextStyle(fontSize: 25.sp);
  static TextStyle fontSize28 = TextStyle(fontSize: 28.sp);
  static TextStyle fontSize33 = TextStyle(fontSize: 33.sp);

  ///FontWeight
  static const TextStyle fontWeight300 = TextStyle(fontWeight: FontWeight.w300);
  static const TextStyle fontWeight400 = TextStyle(fontWeight: FontWeight.w400);
  static const TextStyle fontWeight500 = TextStyle(fontWeight: FontWeight.w500);
  static const TextStyle fontWeight600 = TextStyle(fontWeight: FontWeight.w600);
  static const TextStyle fontWeight700 = TextStyle(fontWeight: FontWeight.w700);

  ///font family

  static const TextStyle font = TextStyle(fontFamily: "");

  static TextStyle get font10black300 => font
      .merge(fontWeight300)
      .merge(fontSize10)
      .copyWith(color: AppColors.black);
}