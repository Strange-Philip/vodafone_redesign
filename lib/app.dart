import 'package:flutter/material.dart';
import 'package:vodafone_redesign/constants/appImages.dart';
import 'package:vodafone_redesign/homepage/homepage.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vodafone_redesign/theme/app_colors.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  List<Widget> pages = const [
    Center(
      child: Text('Services'),
    ),
    Center(
      child: Text('Cash'),
    ),
    HomePage(),
    Center(
      child: Text('Bundle'),
    ),
    Center(
      child: Text('Settings'),
    ),
  ];
  int selectedIndex = 2;
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[selectedIndex],
        floatingActionButton: Theme(
          data: Theme.of(context).copyWith(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
          ),
          child: FloatingActionButton.large(
            onPressed: () {
              setState(() {
                selectedIndex = 2;
              });
            },
            splashColor: Colors.transparent,
            elevation: 0,
            backgroundColor: Colors.transparent,
            child: SvgPicture.asset(
              AppImages.mascotImage,
              height: 250,
              width: 250,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.devices,
                color: Theme.of(context).colorScheme.primary,
              ),
              activeIcon: const Icon(
                Icons.devices,
                color: AppColors.vodafoneRed,
              ),
              label: 'Services',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.money,
                color: Theme.of(context).colorScheme.primary,
              ),
              activeIcon: const Icon(
                Icons.money,
                color: AppColors.vodafoneRed,
              ),
              label: 'Cash',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.transparent,
                size: 1,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle_outline,
                color: Theme.of(context).colorScheme.primary,
              ),
              activeIcon: const Icon(
                Icons.add_circle_outline,
                color: AppColors.vodafoneRed,
              ),
              label: 'Bundles',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings_outlined,
                color: Theme.of(context).colorScheme.primary,
              ),
              activeIcon: const Icon(
                Icons.settings_outlined,
                color: AppColors.vodafoneRed,
              ),
              label: 'Settings',
            ),
          ],
          selectedItemColor: AppColors.primary,
          onTap: onItemTapped,
        ));
  }
}
