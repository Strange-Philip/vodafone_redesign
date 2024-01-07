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
  List<Widget> pages = [Container(), Container(), const HomePage(), Container(), Container()];
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
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.devices,
                color: Theme.of(context).colorScheme.primary,
              ),
              label: 'Services',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.money,
                color: Theme.of(context).colorScheme.primary,
              ),
              label: 'Cash',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppImages.mascotImage,
                height: 70,
                width: 70,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle_outline,
                color: Theme.of(context).colorScheme.primary,
              ),
              label: 'Bundles',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings_outlined,
                color: Theme.of(context).colorScheme.primary,
              ),
              label: 'Settings',
            ),
          ],
          selectedItemColor: AppColors.primary,
          onTap: onItemTapped,
        ));
  }
}
