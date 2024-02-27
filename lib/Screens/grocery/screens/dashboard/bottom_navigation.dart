import 'package:all_app/Screens/grocery/screens/favourite/favourite_screen.dart';
import 'package:all_app/Screens/grocery/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../cart/c_screen.dart';
import '../cart/cart_screen.dart';
import '../categories/explore_screen.dart';
import '../home/home_page.dart';
import '../home/home_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _selectedIndex = _tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.black26,
          ),
          child: Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 15.0, vertical: 12.0),
            child: GNav(
              backgroundColor: Colors.transparent,
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: AppColors.primaryColor,
              padding: const EdgeInsets.all(10),
              gap: 8,
              tabs: const [
                GButton(icon: Icons.home_outlined, text: 'Home'),
                GButton(icon: Icons.category_outlined, text: 'Explore'),
                GButton(icon: Icons.shopping_cart_outlined, text: 'Cart'),
                GButton(
                    icon: Icons.favorite_border_outlined, text: 'Favourite'),
                // GButton(
                //     icon: Icons.account_circle_outlined, text: 'Account'),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                _tabController.index = index;
              },
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          HomePageScreen(),
          ExploreScreen(),
          CScrren(),
          FavouriteScreen(),
          // Profile(),
          // Add a dummy page to match the number of tabs
          Container(
            color: Colors.blue,
            child: Center(
              child: Text(
                'Dummy Page',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
