import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/my_color.dart';

class VideoBox extends StatefulWidget {
  const VideoBox({
    super.key,
  });

  @override
  State<VideoBox> createState() => _VideoBoxState();
}

class _VideoBoxState extends State<VideoBox> {
  // The variable for tracking the download state
  bool isDownloadInProgress = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        children: [
          Row(
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
                      '5.56 MB / 7.28 MB, 1 min left',
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
                  Container(
                    width: 203.w,
                    height: 10.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: SolidColor.rhinoDark50,
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
                      child: Row(
                        children: [
                          Container(
                            width: 153.w,
                            decoration: BoxDecoration(
                              color: SolidColor.orange500,
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: 10.h,
            right: 2,
            child: PopupMenuButton<String>(
              elevation: 200,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
              icon: const Icon(
                Icons.more_vert,
                color: SolidColor.rhinoDark500,
              ),
              onSelected: (value) {
                if (value == 'pause') {
                  setState(() {
                    // Change downlosd state
                    isDownloadInProgress = !isDownloadInProgress;
                  });
                } else if (value == 'cancel') {
                  // Handle cancel download
                }
              },
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem<String>(
                    value: 'pause',
                    child: Row(
                      children: [
                        isDownloadInProgress
                            ? SvgPicture.asset('assets/images/pause-circle.svg')
                            : SvgPicture.asset('assets/images/play-circle.svg'),
                        SizedBox(width: 12.w),
                        Text(
                          isDownloadInProgress ? 'Pause' : 'Resume',
                          style: TextStyle(
                            color: SolidColor.rhinoDark500,
                            fontSize: 14.sp,
                            fontFamily: 'mm',
                          ),
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem<String>(
                    value: 'cancel',
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/images/close-circle.svg'),
                        SizedBox(width: 12.w),
                        Text(
                          'Cancel',
                          style: TextStyle(
                            color: SolidColor.mandyRed500,
                            fontSize: 14.sp,
                            fontFamily: 'mm',
                          ),
                        ),
                      ],
                    ),
                  ),
                ];
              },
            ),
          )
        ],
      ),
    );
  }
}
