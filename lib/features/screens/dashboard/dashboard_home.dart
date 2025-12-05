import 'package:bravoo/core/app_theme.dart';
import 'package:bravoo/core/components/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DashboardHome extends StatelessWidget {
  const DashboardHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppText(
          textAlign: TextAlign.center,
          text: "Enter to win the Oraimo OpenSnap!",
          color: Colors.white,
          size: 18.sp,
          weight: FontWeight.w600,
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF2A0052),
      ),

      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xFF2A0052), // Dark purple
              const Color.fromARGB(255, 49, 6, 88), // Light purple
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // SvgPicture.asset("assets/svgs/oraimo.svg", height: 150.h),
              Image.asset("assets/images/oraimo.png", height: 150.h),
              Image.asset("assets/images/box.png", height: 150.h),
              10.verticalSpace,

              // _buildHeaderSection(),
              20.verticalSpace,

              // Floating Icon (Megaphone placeholder)
              20.verticalSpace,
              Image.asset("assets/images/draw.png", height: 150.h),
              _buildInviteSection(),
              20.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInviteSection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 69, 19, 122), // Light purple
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        children: [
          Center(
            child: Container(
              height: 60.h,
              width: 60.w,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: Image.asset(
                "assets/images/megaphone.png",
                height: 40.h,
                width: 40.w,
              ),
            ),
          ),
          AppText(
            text: "Qualification Rule",
            size: 24.sp,
            weight: FontWeight.w800,
            color: Colors.white,
          ),
          10.verticalSpace,
          AppText(
            text:
                "Invite at least 2 friends who sign up through your link to qualify.",
            size: 14.sp,
            // weight: FontWeight.w400,
            color: Colors.white.withValues(alpha: 0.8),
            textAlign: TextAlign.center,
          ),
          20.verticalSpace,
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.h),
            padding: EdgeInsets.all(20.w),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 88, 40, 139),
              borderRadius: BorderRadius.circular(20.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 20,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 15.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.1),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person_add, size: 20.sp, color: Colors.black),
                      SizedBox(width: 10.w),
                      Text(
                        "Invite Friends Now",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                // Avatar Placeholder
                Image.asset("assets/images/invite-friends.png", height: 100.h),
                20.verticalSpace,
                Text(
                  "Once your second friend joins, you're\nautomatically entered.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 14.sp,
                    height: 1.5,
                  ),
                ),
                30.verticalSpace,
                Divider(color: Colors.white38, thickness: 1),
                20.verticalSpace,
                AppText(
                  text: "Invite your friends quick & easy.",
                  color: Colors.white,
                  size: 16.sp,
                ),
                10.verticalSpace,
                Container(
                  height: 50.h,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 111, 68, 157),
                    borderRadius: BorderRadius.circular(15.r),
                    border: Border.all(color: Colors.grey[200]!),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText(
                        text: "https://Bravoo.ref.12419",
                        size: 16.sp,
                        weight: FontWeight.w400,
                        color: Colors.white,
                      ),
                      10.horizontalSpace,
                      Icon(Icons.copy, color: Colors.white, size: 20.sp),
                    ],
                  ),
                ),
                30.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildSocialIcon(
                      Icons.chat_bubble,
                      // Colors.green,
                      "whatsapp",
                    ), // WhatsApp placeholder
                    _buildSocialIcon(
                      Icons.close,
                      // Colors.black,
                      "twitter",
                    ), // X placeholder
                    _buildSocialIcon(
                      Icons.business,
                      // Colors.blue[800]!,
                      "linkedin",
                    ), // LinkedIn placeholder
                  ],
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        AppText(
                          text: "You referred",
                          size: 16.sp,
                          weight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        5.horizontalSpace,
                        Icon(
                          Icons.info_outlined,
                          color: Colors.white,
                          size: 20.sp,
                        ),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Icon(Icons.people, color: Colors.white, size: 20.sp),
                        5.horizontalSpace,
                        AppText(
                          text: "1",
                          size: 16.sp,
                          weight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSocialIcon(IconData icon, String image) {
    return Container(
      height: 100.h,

      width: 70.w,
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        // color: const Color.fromARGB(255, 111, 68, 157),
        shape: BoxShape.rectangle,
      ),
      child: Image.asset(
        "assets/images/$image.png",
        height: 100.h,
        width: 70.w,
      ),
    );
  }
}
