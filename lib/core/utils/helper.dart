import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension AppSpacing on num {
  SizedBox get hSpace => SizedBox(height: toDouble().h);
  SizedBox get wSpace => SizedBox(width: toDouble().w);
}

extension AppString on String {
  bool get isEmail => RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  ).hasMatch(this);
}
