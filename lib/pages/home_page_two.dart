import 'package:downloader_pro/constants/my_color.dart';
import 'package:downloader_pro/pages/home_page_three.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/CustomBannerAd.dart';

class HomePageTwo extends StatefulWidget {
  const HomePageTwo({super.key});

  @override
  State<HomePageTwo> createState() => _HomePageTwoState();
}

class _HomePageTwoState extends State<HomePageTwo> {
  bool isTextFieldEmpty = true;
  Color buttonColor = const Color(0xFFEAECF0);
  Color buttonTextColor = const Color(0xFF838FA0);
  Color prefixIconColor = SolidColor.rhinoDark200;
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
            Padding(
              padding: EdgeInsets.only(left: 84.5.w, right: 84.5.w, top: 82.h),
              child: Row(
                children: [
                  Text(
                    'Step 2:',
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
                    'Paste or Type Link',
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
                        Container(
                          width: double.infinity,
                          height: 58.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30.r),
                            border: Border.all(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: SolidColor.shadow.withOpacity(0.2),
                                blurRadius: 60,
                                offset: const Offset(00, 12),
                              )
                            ],
                          ),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.w),
                              child: TextField(
                                autofocus: true,
                                keyboardType: TextInputType.url,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: SvgPicture.asset(
                                      'assets/images/link.svg',
                                      width: 26.w,
                                      height: 26.h,
                                      color: prefixIconColor,
                                      fit: BoxFit.scaleDown),
                                  hintText: 'Paste or Type Link Here',
                                  hintStyle: TextStyle(
                                    color: SolidColor.rhinoDark200,
                                    fontSize: 14.sp,
                                    fontFamily: 'mr',
                                  ),
                                ),
                                onChanged: (text) {
                                  setState(() {
                                    isTextFieldEmpty = text.isEmpty;
                                    buttonColor = isTextFieldEmpty
                                        ? const Color(0xFFEAECF0)
                                        : const Color(0xFF2C4364);

                                    buttonTextColor = isTextFieldEmpty
                                        ? const Color(0xFF838FA0)
                                        : Colors.white;
                                    prefixIconColor = isTextFieldEmpty
                                        ? SolidColor.rhinoDark300
                                        : SolidColor.rhinoDark600;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 24.h),
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: isTextFieldEmpty
                                ? () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text(
                                            'Please fill a TextField first.'),
                                      ),
                                    );
                                  }
                                : () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (_) => const HomePageThree(),
                                      ),
                                    );
                                  },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: buttonColor,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.r),
                              ),
                            ),
                            child: Text(
                              'Next',
                              style: TextStyle(
                                color: buttonTextColor,
                                fontSize: 16,
                                fontFamily: 'mm',
                                letterSpacing: -0.16,
                              ),
                            ),
                          ),
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
