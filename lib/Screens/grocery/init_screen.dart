import 'package:all_app/Screens/grocery/screens/cart/c_screen.dart';
import 'package:all_app/Screens/grocery/screens/chat/chat_list_screen.dart';
import 'package:all_app/Screens/grocery/screens/favourite/favourite_screen.dart';
import 'package:all_app/Screens/grocery/screens/home/home_screen.dart';
import 'package:all_app/Screens/grocery/styles/colors.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InitScreen extends StatefulWidget {
  const InitScreen({Key? key}) : super(key: key);

  @override
  State<InitScreen> createState() => _InitScreenState();
}

class _InitScreenState extends State<InitScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    // HomePageScreen(),
    // Add your other screens here
    ChatListScreen(),
    CScrren(), // Placeholder for other screens
    FavouriteScreen(), // Placeholder for other screens
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        items: [
          _buildNavItem("assets/icons/Shop Icon.svg", "Shop"),
          _buildNavItem("assets/icons/explore_icon.svg", "Explore"),
          _buildNavItem("assets/icons/cart_icon.svg", "Cart"),
          _buildNavItem("assets/icons/favourite_icon.svg", "Favourite"),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        index: _currentIndex,
        height: 55,
        backgroundColor: Colors.transparent,
        animationDuration: Duration(milliseconds: 200),
        color: AppColors.primaryColor,
      ),
      body: _screens[_currentIndex],
    );
  }

  Widget _buildNavItem(String iconPath, String label) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            iconPath,
            color: _currentIndex == 0 ? Colors.white70 : Colors.white,
          ),
          SizedBox(height: 2),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: _currentIndex == 0 ? Colors.white70 : Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
