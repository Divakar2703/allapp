import 'package:all_app/Screens/grocery/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeHeader extends StatelessWidget {
  final VoidCallback? onIconPressed; // Callback function to be called when icon is pressed

  const HomeHeader({
    Key? key,
    this.onIconPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [

        const Text(
          'Yogita Sharma',
          style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontFamily: "Muli",
              fontWeight: FontWeight.w600
          ),
        ),
        const Spacer(),
        Container(
          decoration: BoxDecoration(
            color: AppColors.primaryColor, // Set your desired background color here
            borderRadius: BorderRadius.circular(12.0), // Set the border radius
          ),
          child: IconButton(
            onPressed: (){
              print("icon pressed");
              onIconPressed;
            }, // Call the callback function when icon is pressed
            icon: SvgPicture.asset(
              "assets/icons/Filter.svg", color: Colors.white,),
            color: Colors.white, // Optionally, set the icon color
          ),
        ),
        const SizedBox(width: 8),
        CircleAvatar(
          backgroundColor: AppColors.primaryColor, // Set your desired background color here
          radius: 21, // Set the radius of the avatar
          foregroundColor: Colors.white, // Set the color of the border
          child: ClipOval(
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white70, // Set the color of the border
                  width: 1.7, // Set the width of the border
                ),
              ),
              child: Image.asset(
                "assets/images/Profile Image.png", // Replace with your image asset path
                fit: BoxFit.cover, // Adjust the BoxFit property as needed
              ),
            ),
          ),
        ),
      ],
    );
  }
}
