import 'package:downloader_pro/constants/my_color.dart';
import 'package:downloader_pro/pages/finished_page.dart';
import 'package:downloader_pro/pages/home_page_one.dart';
import 'package:downloader_pro/pages/inprogses_page.dart';
import 'package:downloader_pro/pages/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomeBottomNavigaitonBar extends StatefulWidget {
  const CustomeBottomNavigaitonBar({super.key});

  @override
  State<CustomeBottomNavigaitonBar> createState() =>
      _CustomeBottomNavigaitonBarState();
}

class _CustomeBottomNavigaitonBarState
    extends State<CustomeBottomNavigaitonBar> {
  int selectedBottomNavigationIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        backgroundColor: Colors.white,
        body: IndexedStack(
          index: selectedBottomNavigationIndex,
          children: getScreens(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              selectedBottomNavigationIndex = index;
            });
          },
          currentIndex: selectedBottomNavigationIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          elevation: 0,
          unselectedLabelStyle: const TextStyle(
            fontSize: 12,
            fontFamily: 'msb',
            color: SolidColor.rhinoDark200,
          ),
          selectedLabelStyle: const TextStyle(
            fontSize: 12,
            fontFamily: 'msb',
            color: SolidColor.rhinoDark500,
          ),
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/home_icon.svg',
              ),
              activeIcon:
                  SvgPicture.asset('assets/images/home_icon_active.svg'),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/download_icon.svg',
              ),
              activeIcon:
                  SvgPicture.asset('assets/images/download_icon_active.svg'),
              label: 'In Progress',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/finish_icon.svg',
              ),
              activeIcon:
                  SvgPicture.asset('assets/images/finish_icon_active.svg'),
              label: 'Finished',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/settings_icon.svg',
              ),
              activeIcon:
                  SvgPicture.asset('assets/images/settings_icon_active.svg'),
              label: 'Settings',
            ),
          ],
        ));
  }

  List<Widget> getScreens() {
    return <Widget>[
      const HomePageOne(),
      const InProgsesPage(),
      const FinishedPage(),
      const SettingsPage(),
    ];
  }
}
