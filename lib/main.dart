import 'package:bravoo/core/app_theme.dart';
import 'package:bravoo/features/screens/home.dart';
import 'package:bravoo/features/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: "assets/.env");

  await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL']!,
    anonKey: dotenv.env['SUPABASE_ANON_KEY']!,
  );

  runApp(const BravoApp());
}

class BravoApp extends StatelessWidget {
  const BravoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) {
        return LayoutBuilder(
          builder: (context, constraints) {
            ScreenUtil.init(
              context,
              designSize: Size(constraints.maxWidth, constraints.maxHeight),
            );
            return MaterialApp(
              title: 'Bravoo',
              theme: AppTheme.lightTheme,
              home: const HomeScreen(),
              debugShowCheckedModeBanner: false,
            );
          },
        );
      },
    );
  }
}
