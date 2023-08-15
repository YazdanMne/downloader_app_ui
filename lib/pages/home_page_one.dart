import 'package:downloader_pro/constants/my_color.dart';
import 'package:downloader_pro/pages/home_page_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/CustomBannerAd.dart';

class HomePageOne extends StatelessWidget {
  const HomePageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    SolidColor.orange200,
                    SolidColor.orange50,
                    SolidColor.orange50,
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 60.h, left: 32.w, right: 32.w),
              child: Container(
                width: double.infinity,
                height: 6.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.r)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 110.w,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.r)),
                        color: SolidColor.orange500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 84.5.w, right: 84.5.w, top: 82.h),
              child: Row(
                children: [
                  Text(
                    'Step 1:',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: SolidColor.rhino500,
                      fontSize: 16.sp,
                      fontFamily: 'MB',
                      height: 1.62.h,
                      letterSpacing: -0.16,
                    ),
                  ),
                  SizedBox(width: 2.w),
                  Text(
                    'Choose Social Media',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: SolidColor.rhino500,
                      fontSize: 16.sp,
                      fontFamily: 'MM',
                      height: 1.62.h,
                      letterSpacing: -0.16,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 128.h),
              child: Container(
                width: double.infinity,
                height: 684.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 24.h, left: 24.w, right: 24.w),
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (_) => const HomePageTwo(),
                                  ),
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16.w, vertical: 16.h),
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1,
                                        color: SolidColor.rhinoDark50),
                                    borderRadius: BorderRadius.circular(12.r),
                                  ),
                                ),
                                child: Center(
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/images/instagram.svg',
                                        width: 32.w,
                                        height: 32.h,
                                      ),
                                      SizedBox(width: 10.w),
                                      SizedBox(
                                        width: 80.w,
                                        child: Text(
                                          'Instagram',
                                          style: TextStyle(
                                            color: SolidColor.rhino500,
                                            fontSize: 14.sp,
                                            fontFamily: 'MB',
                                            letterSpacing: -0.14,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(width: 16.w),

                            // facebook
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.w, vertical: 16.h),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 1, color: SolidColor.rhinoDark50),
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                              ),
                              child: Center(
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/images/facebook.svg'),
                                    SizedBox(width: 10.w),
                                    SizedBox(
                                      width: 80.w,
                                      child: Text(
                                        'Facebook',
                                        style: TextStyle(
                                          color: SolidColor.rhino500,
                                          fontSize: 14.sp,
                                          fontFamily: 'MB',
                                          letterSpacing: -0.14,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16.h),

                        // second cards
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.w, vertical: 16.h),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 1, color: SolidColor.rhinoDark50),
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                              ),
                              child: Center(
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/images/twitter.svg',
                                      width: 32.w,
                                      height: 32.h,
                                    ),
                                    SizedBox(width: 10.w),
                                    SizedBox(
                                      width: 80.w,
                                      child: Text(
                                        'Twitter',
                                        style: TextStyle(
                                          color: SolidColor.rhino500,
                                          fontSize: 14.sp,
                                          fontFamily: 'MB',
                                          letterSpacing: -0.14,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            SizedBox(width: 16.w),

                            // pintrest
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.w, vertical: 16.h),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 1, color: SolidColor.rhinoDark50),
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                              ),
                              child: Center(
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/images/pinterest.svg'),
                                    SizedBox(width: 10.w),
                                    SizedBox(
                                      width: 80.w,
                                      child: Text(
                                        'pinterest',
                                        style: TextStyle(
                                          color: SolidColor.rhino500,
                                          fontSize: 14.sp,
                                          fontFamily: 'MB',
                                          letterSpacing: -0.14,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 16.h),

                        // thers cards
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.w, vertical: 16.h),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 1, color: SolidColor.rhinoDark50),
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                              ),
                              child: Center(
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/images/whatsapp.svg',
                                      width: 32.w,
                                      height: 32.h,
                                    ),
                                    SizedBox(width: 10.w),
                                    SizedBox(
                                      width: 80.w,
                                      child: Text(
                                        'Whatsapp',
                                        style: TextStyle(
                                          color: SolidColor.rhino500,
                                          fontSize: 14.sp,
                                          fontFamily: 'MB',
                                          letterSpacing: -0.14,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            SizedBox(width: 16.w),

                            // linkedin
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.w, vertical: 16.h),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 1, color: SolidColor.rhinoDark50),
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                              ),
                              child: Center(
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/images/linkedin.svg'),
                                    SizedBox(width: 10.w),
                                    SizedBox(
                                      width: 80.w,
                                      child: Text(
                                        'Linkedin',
                                        style: TextStyle(
                                          color: SolidColor.rhino500,
                                          fontSize: 14.sp,
                                          fontFamily: 'MB',
                                          letterSpacing: -0.14,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 24.h),
                          child: const CustomBannerAd(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
