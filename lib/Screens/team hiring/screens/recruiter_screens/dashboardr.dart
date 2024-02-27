import 'package:all_app/Screens/team%20hiring/screens/recruiter_screens/profiler_screen.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import '../empoloyee_screens/chat_screen.dart';
import 'homer_screens.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DashboardR(),
    );
  }
}

class DashboardR extends StatefulWidget {
  const DashboardR({Key? key}) : super(key: key);

  @override
  State<DashboardR> createState() => _DashboardRState();
}

class _DashboardRState extends State<DashboardR> {
  final items = const [
    Icon(
      Icons.chat_outlined,
      size: 30,
      color: Colors.white70,
    ),
    Icon(
      Icons.home_outlined,
      size: 30,
      color: Colors.white70,

    ),
    Icon(
      Icons.person_outline,
      size: 30,
      color: Colors.white70,

    ),
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
      ),
      body: Container(
        color: Colors.blue,
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        child: getSelectedWidget(index: index),
      ),
    );
  }

  Color hexToColor(String code) {
    return   Colors.blue.shade300;
  }

  Widget getSelectedWidget({required int index}) {
    late Widget widget;
    switch (index) {
      case 1:
        widget = const HomeRScreen();
        break;
      case 0:
        widget = const ChatScreen();
        break;
      case 2:
       widget = const Profiler();
        break;
      default:
        widget = const HomeRScreen();
        break;
    }
    return widget;
  }
}
