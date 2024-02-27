import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../../constants.dart';


class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.only(left: 8,right: 12),
        child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 40,
            width: 120,
           color: Colors.transparent,
            child: Image.asset(
              "assets/images/main/bitslogoo.png", // Replace with your image asset path
              fit: BoxFit.cover, // Adjust the BoxFit property as needed
            ),
          ),
          SvgPicture.asset(
            'assets/icons/profile.svg', // Replace with the path to your SVG icon
            height: 25,
            width: 25,
            color: Colors.white, // Customize the color if needed
          ),





        ],
            ),
      );
  }
}
