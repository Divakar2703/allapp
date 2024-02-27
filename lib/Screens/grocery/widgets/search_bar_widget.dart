import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchBarWidget extends StatelessWidget {
  final String searchIcon = "assets/icons/search_icon.svg";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(
            searchIcon,
            color: Colors.white70,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            "Search Store",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
             //   color: Color(0xFF7C7C7C),
              color: Colors.white70
            ),
          )
        ],
      ),
    );
  }
}
