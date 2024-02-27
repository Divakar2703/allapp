import 'package:flutter/material.dart';
import 'package:responsive_navigation_bar/responsive_navigation_bar.dart';

import 'homePageServices.dart';

class InitScreenServices extends StatefulWidget {
  const InitScreenServices({Key? key}) : super(key: key);

  @override
  State<InitScreenServices> createState() => _InitScreenServicesState();
}

class _InitScreenServicesState extends State<InitScreenServices> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomePageServices(),
    HomePageServices(),
    HomePageServices(),
    HomePageServices(),
  ];

  void changeTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black87,
        body: _screens[_selectedIndex],
        bottomNavigationBar: ResponsiveNavigationBar(
          selectedIndex: _selectedIndex,
          onTabChange: changeTab,
          textStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          navigationBarButtons: const <NavigationBarButton>[
            NavigationBarButton(
              text: 'Bits',
              icon: Icons.manage_accounts_outlined,
              backgroundGradient: LinearGradient(
                colors: [
                  Color(0xFF2c3e50),
                  Color(0xFFbdc3c7),
                ],
              ),
            ),
            NavigationBarButton(
              text: 'Home',
              icon: Icons.home,
              backgroundGradient: LinearGradient(
                colors: [
                  Color(0xFF2c3e50),
                  Color(0xFFbdc3c7),
                ],
              ),
            ),
            NavigationBarButton(
              text: 'Native',
              icon: Icons.star,
              backgroundGradient: LinearGradient(
                colors: [
                  Color(0xFF2c3e50),
                  Color(0xFFbdc3c7),
                ],
              ),
            ),
            NavigationBarButton(
              text: 'Account',
              icon: Icons.person,
              backgroundGradient: LinearGradient(
                colors: [
                  Color(0xFF2c3e50),
                  Color(0xFFbdc3c7),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
