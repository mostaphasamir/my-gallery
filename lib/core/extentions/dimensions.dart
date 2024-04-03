import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension Dimentions on num {
  SizedBox get hs => SizedBox(height: h);

  SizedBox get ws => SizedBox(width: w);

  EdgeInsetsGeometry get paddingAll => EdgeInsets.symmetric(
    horizontal: w,
    vertical: h,
  );
}