import 'package:flutter/material.dart';

import '../constants/my_color.dart';
import '../screens/onboardings_screens.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: PageView(
              children: const [
                OnboardingOne(),
                OnboardingTwo(),
                OnboardingThree(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
