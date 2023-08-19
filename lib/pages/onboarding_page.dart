import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constants/my_color.dart';
import '../screens/onboardings_screens.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 375.w,
      height: 812.h,
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
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
            Center(
              child: PageView.builder(
                controller: controller,
                itemCount: 3,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return const OnboardingOne();
                  } else if (index == 1) {
                    return const OnboardingTwo();
                  } else if (index == 2) {
                    return const OnboardingThree();
                  }
                  return Container();
                },
              ),
            ),
            Positioned(
              top: 65.h,
              right: 150.w,
              left: 150.w,
              child: SmoothPageIndicator(
                  controller: controller, // PageController
                  count: 3,
                  effect: const ExpandingDotsEffect(
                    dotColor: Colors.white,
                    activeDotColor: SolidColor.orange500,
                  ), // your preferred effect
                  onDotClicked: (index) {}),
            )
          ],
        ),
      ),
    );
  }
}
