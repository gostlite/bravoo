import 'package:bravoo/core/components/app_button.dart';
import 'package:bravoo/core/utils/app_toast.dart';
import 'package:bravoo/core/utils/helper.dart';
import 'package:bravoo/features/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            Center(
              child: SvgPicture.asset('assets/svgs/logo.svg', height: 150.h),
            ),
            const Spacer(),
            Center(
              child: AppButton(
                backgroundColor: Colors.white,
                textColor: Theme.of(context).primaryColor,
                onPressed: () {
                  AppToast.showSuccess(context, 'Successfully logged in');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                text: 'Start',
              ),
            ),
            25.hSpace,
          ],
        ),
      ),
    );
  }
}
