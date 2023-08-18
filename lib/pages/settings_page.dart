import 'package:downloader_pro/widgets/CustomBannerAd.dart';
import 'package:downloader_pro/widgets/switch_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/my_color.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

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
              padding: EdgeInsets.only(top: 82.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Settings',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: SolidColor.rhino500,
                      fontSize: 16.sp,
                      fontFamily: 'MB',
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
                child: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(top: 24.h, left: 24.w, right: 24.w),
                      child: Center(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset('assets/images/moon.svg'),
                                    SizedBox(width: 20.w),
                                    Text(
                                      'Dark Mode',
                                      style: TextStyle(
                                        fontFamily: 'msb',
                                        fontSize: 16.sp,
                                        color: SolidColor.rhinoDark500,
                                      ),
                                    ),
                                  ],
                                ),
                                SiwtchButtonWidget(
                                  value: false,
                                  onChanged: (value) {},
                                ),
                              ],
                            ),
                            SizedBox(height: 20.h),
                            Divider(height: 1.h),
                            SizedBox(height: 20.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset('assets/images/wifi.svg'),
                                    SizedBox(width: 20.w),
                                    Text(
                                      'Download With Wi-Fi Only',
                                      style: TextStyle(
                                        fontFamily: 'msb',
                                        fontSize: 16.sp,
                                        color: SolidColor.rhinoDark500,
                                      ),
                                    ),
                                  ],
                                ),
                                SiwtchButtonWidget(
                                  value: true,
                                  onChanged: (value) {},
                                ),
                              ],
                            ),
                            SizedBox(height: 20.h),
                            Divider(height: 1.h),
                            SizedBox(height: 20.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/images/global.svg'),
                                    SizedBox(width: 20.w),
                                    Text(
                                      'Language',
                                      style: TextStyle(
                                        fontFamily: 'msb',
                                        fontSize: 16.sp,
                                        color: SolidColor.rhinoDark500,
                                      ),
                                    ),
                                  ],
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  color: SolidColor.rhinoDark200,
                                  size: 15,
                                ),
                              ],
                            ),
                            SizedBox(height: 20.h),
                            Divider(height: 1.h),
                            SizedBox(height: 20.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset('assets/images/star.svg'),
                                    SizedBox(width: 20.w),
                                    Text(
                                      'Rate Us',
                                      style: TextStyle(
                                        fontFamily: 'msb',
                                        fontSize: 16.sp,
                                        color: SolidColor.rhinoDark500,
                                      ),
                                    ),
                                  ],
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  color: SolidColor.rhinoDark200,
                                  size: 15,
                                ),
                              ],
                            ),
                            SizedBox(height: 20.h),
                            Divider(height: 1.h),
                            SizedBox(height: 20.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset('assets/images/share.svg'),
                                    SizedBox(width: 20.w),
                                    Text(
                                      'Share With Friends',
                                      style: TextStyle(
                                        fontFamily: 'msb',
                                        fontSize: 16.sp,
                                        color: SolidColor.rhinoDark500,
                                      ),
                                    ),
                                  ],
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  color: SolidColor.rhinoDark200,
                                  size: 15,
                                ),
                              ],
                            ),
                            SizedBox(height: 24.h),
                            const CustomBannerAd(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
