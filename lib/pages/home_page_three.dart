import 'package:downloader_pro/constants/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePageThree extends StatefulWidget {
  const HomePageThree({super.key});

  @override
  State<HomePageThree> createState() => _HomePageThreeState();
}

class _HomePageThreeState extends State<HomePageThree> {
  int selectedButtonIndex = 0;

  void _onButtonPressed(int index) {
    setState(() {
      selectedButtonIndex = index;
    });
  }

  Widget _buildButton(bool isSelected, String label, String dec, int index) {
    return Badge(
      isLabelVisible: selectedButtonIndex == index,
      label: const Icon(
        Icons.check,
        color: Colors.white,
        size: 10,
      ),
      backgroundColor: SolidColor.orange500,
      child: ElevatedButton(
        onPressed: () =>
            _onButtonPressed(selectedButtonIndex == index ? -1 : index),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 0,
          surfaceTintColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(
              color: selectedButtonIndex == index
                  ? SolidColor.orange500
                  : SolidColor.rhinoDark300,
              width: 1,
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        ),
        child: Column(
          children: [
            SizedBox(
              width: 66.w,
              child: Text(
                label,
                style: TextStyle(
                  color: SolidColor.rhinoDark500,
                  fontSize: 16.sp,
                  fontFamily: 'mb',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: 66.w,
              child: Text(
                dec,
                style: TextStyle(
                  color: SolidColor.rhinoDark300,
                  fontSize: 12.sp,
                  fontFamily: 'mr',
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

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
                child: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(top: 24.h, left: 24.w, right: 24.w),
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
                    SizedBox(height: 32.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildButton(
                            selectedButtonIndex == 0, '1080 P', '7.80 MB', 0),
                        SizedBox(width: 16.w),
                        _buildButton(
                            selectedButtonIndex == 1, '720 P', '6.20 MB', 1),
                        SizedBox(width: 16.w),
                        _buildButton(
                            selectedButtonIndex == 2, '480 P', '4.10 MB', 2),
                      ],
                    ),
                    SizedBox(height: 16.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildButton(
                            selectedButtonIndex == 3, '360 P', '3.5 MB', 3),
                        SizedBox(width: 16.w),
                        _buildButton(
                            selectedButtonIndex == 4, '280 P', '2.0 MB', 4),
                        SizedBox(width: 16.w),
                        _buildButton(
                            selectedButtonIndex == 5, '148 P', '6.20 KB', 5),
                      ],
                    ),
                    SizedBox(height: 24.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.r),
                          color: SolidColor.rhinoDark500,
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 126.w, vertical: 12.h),
                        child: const Center(
                          child: Text(
                            'Download',
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
                    )
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
