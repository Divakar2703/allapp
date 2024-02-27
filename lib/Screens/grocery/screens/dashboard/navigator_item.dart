import 'package:all_app/Screens/grocery/screens/categories/explore_screen.dart';
import 'package:all_app/Screens/grocery/screens/favourite/favourite_screen.dart';
import 'package:all_app/Screens/grocery/screens/home/home_page.dart';
import 'package:flutter/material.dart';

import '../cart/c_screen.dart';


class NavigatorItem {
  final String label;
  final String iconPath;
  final int index;
  final Widget screen;

  NavigatorItem(this.label, this.iconPath, this.index, this.screen);
}

List<NavigatorItem> navigatorItems = [
  NavigatorItem("Shop", "assets/icons/shop_icon.svg", 0, HomePageScreen()),
  NavigatorItem("Explore", "assets/icons/explore_icon.svg", 1, ExploreScreen()),
  NavigatorItem("Cart", "assets/icons/cart_icon.svg", 2, CScrren()),
  NavigatorItem(
      "Favourite", "assets/icons/favourite_icon.svg", 3, FavouriteScreen()),

];
