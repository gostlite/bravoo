import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppText extends StatelessWidget {
  const AppText({
    super.key,
    required this.text,
    this.color = Colors.black,
    this.size = 14,
    this.weight = FontWeight.w400,
    this.textAlign,
  });
  final String text;
  final Color? color;
  final double? size;
  final FontWeight? weight;
  final TextAlign? textAlign;
  // final AppTextTheme? appTextTheme;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
        color: color,
        fontSize: size?.sp,
        fontWeight: weight,
      ),
    );
  }
}
