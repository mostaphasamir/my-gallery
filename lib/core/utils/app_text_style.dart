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
  static TextStyle fontSize27 = TextStyle(fontSize: 27.sp);
  static TextStyle fontSize28 = TextStyle(fontSize: 28.sp);
  static TextStyle fontSize30 = TextStyle(fontSize: 30.sp);
  static TextStyle fontSize32 = TextStyle(fontSize: 32.sp);
  static TextStyle fontSize50 = TextStyle(fontSize: 50.sp);

  ///FontWeight
  static const TextStyle fontWeight300 = TextStyle(fontWeight: FontWeight.w300);
  static const TextStyle fontWeight400 = TextStyle(fontWeight: FontWeight.w400);
  static const TextStyle fontWeight500 = TextStyle(fontWeight: FontWeight.w500);
  static const TextStyle fontWeight600 = TextStyle(fontWeight: FontWeight.w600);
  static const TextStyle fontWeight700 = TextStyle(fontWeight: FontWeight.w700);

  ///font family

  static const TextStyle baloo = TextStyle(fontFamily: "BalooThambi2");
  static const TextStyle segoe = TextStyle(fontFamily: "Segoe UI");

  static TextStyle get segoe50darkGrey700 => segoe
      .merge(fontWeight700)
      .merge(fontSize50)
      .copyWith(color: AppColors.darkGrey);

  static TextStyle get baloo32darkGrey500 => segoe
      .merge(fontWeight500)
      .merge(fontSize32)
      .copyWith(color: AppColors.darkGrey);

  static TextStyle get segoe30darkGrey700 => segoe
      .merge(fontWeight700)
      .merge(fontSize30)
      .copyWith(color: AppColors.darkGrey);

  static TextStyle get segoe27darkGrey700 => segoe
      .merge(fontWeight700)
      .merge(fontSize27)
      .copyWith(color: AppColors.darkGrey);

  static TextStyle get baloo20darkGrey500 => baloo
      .merge(fontWeight500)
      .merge(fontSize20)
      .copyWith(color: AppColors.darkGrey);

  static TextStyle get segoe18white700 => segoe
      .merge(fontWeight700)
      .merge(fontSize18)
      .copyWith(color: AppColors.white);


  static TextStyle get segoe16mediumGrey500 => segoe
      .merge(fontWeight500)
      .merge(fontSize16)
      .copyWith(color: AppColors.mediumGrey);
}