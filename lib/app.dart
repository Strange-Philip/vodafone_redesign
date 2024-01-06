import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  List<Widget> pages = [
    const Center(child: Text('Home')),
    const Center(child: Text('Business')),
    const Center(child: Text('School')),
    Container(),
    Container()
  ];
  int selectedIndex = 0;
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
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.black),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business, color: Colors.black),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school, color: Colors.black),
              label: 'School',
            ),
          ],
          selectedItemColor: Theme.of(context).colorScheme.primary,
          onTap: onItemTapped,
        ));
  }
}
