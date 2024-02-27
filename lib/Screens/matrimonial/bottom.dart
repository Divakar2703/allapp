import 'package:all_app/Screens/matrimonial/profile/profile_screen.dart';
import 'package:all_app/Screens/matrimonial/shortList/shortlisted_screens.dart';
import 'package:flutter/material.dart';

import 'chat_list_screen.dart';
import 'database_screen.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Bottom> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    DatabaseScreen(),
    ChatListScreen(),
    ShortListScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _pages[_currentIndex], // Show the current page
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.pinkAccent, // Background color of the BottomNavigationBar
          ),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            selectedItemColor: Colors.white, // Selected icon and label color
            unselectedItemColor: Colors.white, // Unselected icon and label color
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat_outlined),
                label: 'Chat',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.checklist),
                label: 'Shortlisted',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
            onTap: (int index) {
              setState(() {
                _currentIndex = index;
              });
            }, // <- Missing ')' here
          ),
        ),
      ),
    );
  }
}
