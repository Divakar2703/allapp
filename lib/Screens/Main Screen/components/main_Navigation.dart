import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:all_app/Screens/Main%20Screen/home_page2.dart';
import 'package:pandabar/main.view.dart';
import 'package:pandabar/model.dart';

import '../../../constants.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  String page = 'Blue';

  final PageController controller = PageController();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: PandaBar(
        fabColors: [bgColorLight,bgColor],

        backgroundColor:bgColor,
        buttonColor: Colors.white,
        buttonSelectedColor:Color(0xFFfe5726),
        buttonData: [
          PandaBarButtonData(
            id: 'Blue',
            icon: Icons.home,
            title: 'Home',
          ),
          PandaBarButtonData(
            id: 'Green',
            icon: Icons.label_important_sharp,
            title: 'BitsPass',
          ),
          PandaBarButtonData(
            id: 'Red',
            icon: Icons.local_offer_outlined,
            title: 'Offers',
          ),
          PandaBarButtonData(
            id: 'Yellow',
            icon: Icons.web_stories,
            title: 'Stories',
          ),
        ],
        onChange: (id) {
          setState(() {
            page = id;
          });
        },
        onFabButtonPressed: () {
          showCupertinoDialog(
            context: context,
            builder: (context) {
              return CupertinoAlertDialog(
                content: Text('Fab Button Pressed!'),
                actions: <Widget>[
                  CupertinoDialogAction(
                    child: Text('Close'),
                    isDestructiveAction: true,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              );
            },
          );
        },
      ),
      body: Builder(
        builder: (context) {
          switch (page) {
            case 'Green':
              return Container(color: Colors.green.shade500);
            case 'Blue':
              return HomePage();
              return Container(color: Colors.red.shade900);
            case 'Yellow':
              return Container(color: Colors.yellow.shade700);
            default:
              return Container();
          }
        },
      ),
    );
  }
}
