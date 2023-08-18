import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/my_color.dart';

class VideoBoxDone extends StatelessWidget {
  const VideoBoxDone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Container(
            width: 64.w,
            height: 64.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: SolidColor.orange50,
            ),
            child: Center(
              child: SvgPicture.asset(
                'assets/images/video-play.svg',
                color: SolidColor.orange500,
              ),
            ),
          ),
          SizedBox(width: 16.w),
          Column(
            children: [
              SizedBox(
                width: 203.w,
                child: Text(
                  'Video-87935410',
                  style: TextStyle(
                    color: SolidColor.rhinoDark500,
                    fontSize: 16.sp,
                    fontFamily: 'msb',
                    height: 1.62,
                    letterSpacing: -0.16,
                  ),
                ),
              ),
              SizedBox(height: 4.h),
              SizedBox(
                width: 203.w,
                child: Text(
                  '7.28 MB, 8/1/2023',
                  style: TextStyle(
                    color: SolidColor.rhinoDark300,
                    fontSize: 12.sp,
                    fontFamily: 'mr',
                    height: 1.50,
                    letterSpacing: -0.12,
                  ),
                ),
              ),
              SizedBox(height: 6.h),
            ],
          ),
          SizedBox(width: 16.w),
          const Column(
            children: [
              Icon(
                Icons.more_vert,
                color: SolidColor.rhinoDark500,
              )
            ],
          )
        ],
      ),
    );
  }
}
