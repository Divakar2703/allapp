import 'package:all_app/Screens/grocery/screens/account/profileNewScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../account/profile_screen.dart';

class LocationWidget extends StatefulWidget {
  final String locality ;
  final String state ;
  LocationWidget({super.key, required this.locality, required this.state});

  @override
  State<LocationWidget> createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
  String locationIconPath = "assets/icons/location_icon.svg";

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          SvgPicture.asset(
            locationIconPath,
            color: Colors.white,
          ),
          SizedBox(width: 8),
          Text(
            "${widget.locality}, ${widget.state}",
            style: TextStyle(
                fontSize: 19, fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ]),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileNewScreen()),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white54, // Set the border color here
                width: 1.5, // Set the border width
              ),
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/sonu.jpg'),
              radius: 23,
            ),
          ),
        ),
      ],
    );
  }
}
