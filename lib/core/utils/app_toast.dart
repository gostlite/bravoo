import 'package:bravoo/core/components/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toastification/toastification.dart';

class AppToast {
  static showSuccess(BuildContext context, String message) {
    toastification.show(
      context: context,
      autoCloseDuration: const Duration(seconds: 2),
      title: AppText(
        text: "Success",
        size: 16.sp,
        weight: FontWeight.w600,
        color: Colors.white,
      ),
      description: AppText(text: message),
      type: ToastificationType.success,
    );
  }

  static showError(BuildContext context, String message) {
    toastification.show(
      context: context,
      autoCloseDuration: const Duration(seconds: 2),
      title: AppText(
        text: "Error",
        size: 16.sp,
        weight: FontWeight.w600,
        color: Colors.red,
      ),
      description: AppText(text: message),
      type: ToastificationType.error,
    );
  }
}
