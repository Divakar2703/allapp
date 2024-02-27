import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeEndScreen extends StatelessWidget {
  const HomeEndScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(16),
    //  height: 600,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black12
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "India's last",
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.w900,
              color: Colors.grey.shade500
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "minute app",
                style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w900,
                    color: Colors.grey.shade500
                ),
              ),
              SvgPicture.asset(
                "assets/icons/h.svg",
                width: 56, // Adjust the width as needed
                height: 56, // Adjust the height as needed
              ),
            ],
          ),

          SizedBox(height: 30,),
          Divider(
            thickness: 3,
          ),

          SizedBox(height: 20,),
          Text(
            'grocery',
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade500
            ),
          ),

          SizedBox(height: 40,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/grocery_images/man with bick.png",
              height: 270,
                width: 200,
              ),
            ],
          ),

          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Something went wrong',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black87
                ),
              ),
            ],
          ),

          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Please try again later.',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black54
                ),
              ),
            ],
          ),

          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Try again',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.green.shade700
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
