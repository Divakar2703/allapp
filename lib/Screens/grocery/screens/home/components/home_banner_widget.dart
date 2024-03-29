import 'package:all_app/Screens/grocery/common_widgets/app_text.dart';
import 'package:all_app/Screens/grocery/styles/colors.dart';
import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 125,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage(
                "assets/images/banner_background.png",
              ),
              fit: BoxFit.cover)),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Image.asset(
              "assets/images/banner_image.png",
            ),
          ),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText(
                text: "Fresh Vegetables",
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              AppText(
                text: "Get Up To 40%  OFF",
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.primaryColor,
              ),
            ],
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
