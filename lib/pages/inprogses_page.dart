import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/my_color.dart';
import '../widgets/video_box_widget.dart';

class InProgsesPage extends StatelessWidget {
  const InProgsesPage({super.key});

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
                    'In Progress',
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
                      padding: EdgeInsets.only(left: 24.w, right: 24.w),
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(
                              width: 327.w,
                              height: 650.h,
                              child: ListView.builder(
                                padding: EdgeInsets.only(top: 1.h),
                                itemCount: 4,
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      SizedBox(height: 20.h),
                                      const VideoBox(),
                                      SizedBox(height: 20.h),
                                      const Divider(height: 1.0),
                                    ],
                                  );
                                },
                              ),
                            )
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
