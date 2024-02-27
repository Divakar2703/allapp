import 'package:all_app/Screens/team%20hiring/screens/empoloyee_screens/profile_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'chat_screen.dart';
import 'home_screen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final items = const [

    Icon(
      Icons.chat_outlined,
      size: 30,
    ),
    Icon(
      Icons.home_outlined,
      size: 30,
    ),
    Icon(
      Icons.person_outline,
      size: 30,
    )
  ];

      int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        items: items,
        index: index,
        onTap: (selectedIndex) {
          setState(() {
            index = selectedIndex;
          });
        },
        height: 60,
        backgroundColor: Colors.transparent,
        animationDuration: const Duration(milliseconds: 300),
        color: hexToColor('#78c9d1'),
        // buttonBackgroundColor: hexToColor('#FFFFFF'),
        // animationCurve: ,
      ),
      body: Container(
          color: Colors.blue,
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          child: getSelectedWidget(index: index)
      ),
    );

  }
  Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

  Widget getSelectedWidget({required int index}) {
    Widget widget;
    switch (index) {
      case 1:
        widget = const HomeScreen();
        break;
      case 0:
        widget = const ChatScreen();
        break;
      case 2:
        widget = const Profile();
        break;
      default:
        widget = const HomeScreen();
        break;
    }
    return widget;
  }
}
