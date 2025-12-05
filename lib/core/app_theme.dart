import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  // Colors
  static const Color primaryColor = Color(0xFF9013FE);
  static const Color primaryVariant = Color(0xFF3700B3);
  static const Color secondaryColor = Color(0xFF03DAC6);
  static const Color secondaryVariant = Color(0xFF018786);
  static const Color errorColor = Color(0xFFB00020);
  static const Color surfaceColor = Colors.white;
  static const Color backgroundColor = Color(0xFFF5F5F5);
  static const Color onPrimary = Colors.white;
  static const Color onSecondary = Colors.black;
  static const Color onSurface = Colors.black;
  static const Color onBackground = Colors.black;
  static const Color onError = Colors.white;

  // Text Styles (Using standard fonts, no Google Fonts)
  static TextStyle get _heading1 => TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: onSurface,
    letterSpacing: -1.5,
  );

  static TextStyle get _heading2 => TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeight.bold,
    color: onSurface,
    letterSpacing: -0.5,
  );

  static TextStyle get _heading3 => TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    color: onSurface,
    letterSpacing: 0,
  );

  static TextStyle get _body1 => TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.normal,
    color: onSurface,
    letterSpacing: 0.5,
  );

  static TextStyle get _body2 => TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
    color: onSurface.withValues(alpha: 0.6),
    letterSpacing: 0.25,
  );

  static TextStyle get _button => TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: onPrimary,
    letterSpacing: 1.25,
  );

  // Light Theme
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Manrope',
    primaryColor: primaryColor,
    scaffoldBackgroundColor: backgroundColor,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: primaryColor,
      onPrimary: onPrimary,
      secondary: secondaryColor,
      onSecondary: onSecondary,
      error: errorColor,
      onError: onError,
      surface: surfaceColor,
      onSurface: onSurface,
    ),
    textTheme: TextTheme(
      displayLarge: _heading1,
      displayMedium: _heading2,
      displaySmall: _heading3,
      bodyLarge: _body1,
      bodyMedium: _body2,
      labelLarge: _button,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
      foregroundColor: Colors.white, // icons & title text
      surfaceTintColor: Colors.transparent, // no grey overlay on scroll
      elevation: 0, // flat at rest
      scrolledUnderElevation: 0, // no extra shadow on scroll
      iconTheme: const IconThemeData(color: onPrimary),
      titleTextStyle: _heading3.copyWith(color: onPrimary),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: primaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: onPrimary,
        textStyle: _button,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      ),
    ),
  );
}
