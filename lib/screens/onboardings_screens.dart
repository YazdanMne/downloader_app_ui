import 'package:downloader_pro/pages/home_page_one.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/my_color.dart';

class OnboardingOne extends StatelessWidget {
  const OnboardingOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 60.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w),
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
          SizedBox(height: 32.h),
          Text(
            'Easy\nDownloading',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: SolidColor.rhino600,
              fontSize: 38.sp,
              fontFamily: 'mb',
              height: 1.32.h,
              letterSpacing: -0.38,
            ),
          ),
          SizedBox(height: 22.h),
          SizedBox(
            width: 296.w,
            height: 296.h,
            child: SvgPicture.asset('assets/images/onboarding1.svg'),
          ),
          SizedBox(height: 28.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Container(
              width: double.infinity,
              height: 226.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.r),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x0C8D9BAA),
                    blurRadius: 100,
                    offset: Offset(0, 10),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.w, vertical: 24.h),
                      child: SizedBox(
                        width: 303.w,
                        child: Text(
                          'Simplify your downloading experience! With our app, you can effortlessly download photos and videos from your favorite social networks.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: SolidColor.rhino600,
                            fontSize: 16.sp,
                            fontFamily: 'mr',
                            height: 1.62,
                            letterSpacing: -0.16,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          right: 24.w, left: 24.w, bottom: 24.h),
                      child: Container(
                        width: double.infinity,
                        height: 50.h,
                        decoration: BoxDecoration(
                          color: SolidColor.rhino500,
                          borderRadius: BorderRadius.circular(30.r),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x0C8D9BAA),
                              blurRadius: 60,
                              offset: Offset(0, 26),
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                        child: const Center(
                          child: Text(
                            'Next',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'msb',
                              height: 1.62,
                              letterSpacing: -0.16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// two

class OnboardingTwo extends StatelessWidget {
  const OnboardingTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 60.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w),
            child: Container(
              width: double.infinity,
              height: 6.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20.r)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
          SizedBox(height: 32.h),
          Text(
            'Seamless\nIntegration',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: SolidColor.rhino600,
              fontSize: 38.sp,
              fontFamily: 'mb',
              height: 1.32.h,
              letterSpacing: -0.38,
            ),
          ),
          SizedBox(height: 22.h),
          SizedBox(
            width: 296.w,
            height: 296.h,
            child: SvgPicture.asset('assets/images/onboarding2.svg'),
          ),
          SizedBox(height: 28.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Container(
              width: double.infinity,
              height: 226.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.r),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x0C8D9BAA),
                    blurRadius: 100,
                    offset: Offset(0, 10),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.w, vertical: 24.h),
                      child: SizedBox(
                        width: 303.w,
                        child: Text(
                          'Seamlessly integrate our downloader\napp into your daily routine.\nDownloading has never been\nthis convenient!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: SolidColor.rhino600,
                            fontSize: 16.sp,
                            fontFamily: 'mr',
                            height: 1.62,
                            letterSpacing: -0.16,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          right: 24.w, left: 24.w, bottom: 24.h),
                      child: Container(
                        width: double.infinity,
                        height: 50.h,
                        decoration: BoxDecoration(
                          color: SolidColor.rhino500,
                          borderRadius: BorderRadius.circular(30.r),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x0C8D9BAA),
                              blurRadius: 60,
                              offset: Offset(0, 26),
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                        child: const Center(
                          child: Text(
                            'Next',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'msb',
                              height: 1.62,
                              letterSpacing: -0.16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//three

class OnboardingThree extends StatelessWidget {
  const OnboardingThree({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 60.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w),
            child: Container(
              width: double.infinity,
              height: 6.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20.r)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
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
          SizedBox(height: 32.h),
          Text(
            'Eye-friendly\nViewing',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: SolidColor.rhino600,
              fontSize: 38.sp,
              fontFamily: 'mb',
              height: 1.32.h,
              letterSpacing: -0.38,
            ),
          ),
          SizedBox(height: 22.h),
          SizedBox(
            width: 296.w,
            height: 296.h,
            child: SvgPicture.asset('assets/images/onboarding3.svg'),
          ),
          SizedBox(height: 28.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Container(
              width: double.infinity,
              height: 226.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.r),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x0C8D9BAA),
                    blurRadius: 100,
                    offset: Offset(0, 10),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.w, vertical: 24.h),
                      child: SizedBox(
                        width: 303.w,
                        child: Text(
                          'Protect your eyes with our dark mode. Enjoy a soothing, darker color scheme that reduces eye strain and enhances readability in low-light environments.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: SolidColor.rhino600,
                            fontSize: 16.sp,
                            fontFamily: 'mr',
                            height: 1.62,
                            letterSpacing: -0.16,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          right: 24.w, left: 24.w, bottom: 24.h),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => const HomePageOne(),
                            ),
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: SolidColor.rhino500,
                            borderRadius: BorderRadius.circular(30.r),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x0C8D9BAA),
                                blurRadius: 60,
                                offset: Offset(0, 26),
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: const Center(
                            child: Text(
                              'Get Started',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'msb',
                                height: 1.62,
                                letterSpacing: -0.16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
