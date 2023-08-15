import 'package:downloader_pro/constants/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePageThree extends StatelessWidget {
  const HomePageThree({super.key});

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
            Padding(
              padding: EdgeInsets.only(left: 58.w, right: 58.w, top: 82.h),
              child: Row(
                children: [
                  Text(
                    'Step 3:',
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
                    'Choose Quality & Download',
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
                        Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 272.h,
                              decoration: BoxDecoration(
                                color: SolidColor.orange50,
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              child: const Center(
                                child: Text('Picture'),
                              ),
                            ),
                            Positioned(
                              right: 4.w,
                              top: 4.h,
                              child: Container(
                                width: 40.w,
                                height: 40.h,
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.32),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                      'assets/images/video-play.svg'),
                                ),
                              ),
                            ),
                          ],
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
