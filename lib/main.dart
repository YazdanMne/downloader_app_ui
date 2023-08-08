import 'package:downloader_pro/constants/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
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
                    SolidColor.orange200,
                  ],
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: 152,
                height: 152,
                child: SvgPicture.asset(
                  'assets/images/main_icon.svg',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
