import 'package:flutter/material.dart';

import '../../Services/init_Screen_Services.dart';
import '../../Trevel/init_Screen.dart';
import '../../Trevel/screens/splesh_Screen.dart';
import '../../grocery/init_screen.dart';
import '../../matrimonial/bottom.dart';
import '../../team hiring/screens/empoloyee_screens/dashboard.dart';

class CategoryItem extends StatefulWidget {
  const CategoryItem({Key? key}) : super(key: key);

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  List<Map<String, dynamic>> categoryItems = [
    {
      "label": "Grocery",
      "image": "assets/images/grocery.png",
      "color": Colors.green.shade400,
      "color3": Colors.green.shade300,
      "image2": "assets/images/grocery.png",
      "color2": Color(0xFF8abe32),
    },
    {
      "label": "Travels",
      "image": "assets/images/main/plain1.png",
      "color": Colors.blue.shade400,
      "color3": Colors.blue.shade300,
      "image2": "assets/images/main/plain1.png",
      "color2": Colors.blueAccent,
    },
    {
      "label": "Online Steady",
      "image": "assets/images/main/steady.png",
      "color": Colors.orange.shade400,
      "color3": Colors.orange.shade300,
      "image2": "assets/images/steady.png",
      "color2": Colors.orangeAccent,
    },
    {
      "label": "JobKro",
      "image": "assets/images/main/job.png",
      "color": Colors.yellow.shade400,
      "color3":Colors.yellow.shade200,
      "image2": "assets/images/main/job.png",
      "color2": Colors.yellowAccent,
    },
    {
      "label": "Matrimonial",
      "image": "assets/images/main/matrimonial.png",
      "color": Colors.pink.shade400,
      "color3": Colors.pink.shade300,
      "image2": "assets/images/grocery.png",
      "color2": Colors.pinkAccent,
    },
    {
      "label": "Foods",
      "image": "assets/images/main/food.png",
      "color": Colors.purple.shade400,
      "color3": Colors.purple.shade300,
      "image2": "assets/images/food.png",
      "color2": Colors.purpleAccent,
    },

    {
      "label": "Services",
      "image": "assets/images/main/services.png",
      "color": Colors.red.shade400,
      "color3": Colors.red.shade300,
      "image2": "assets/images/services.png",
      "color2": Colors.redAccent,
    },


  ];

  void navigateToScreen(String categoryLabel) {
    switch (categoryLabel) {
      case 'Grocery':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>InitScreen()),
        );
        break;
      case 'Travels':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => InittScreen()),
        );
        break;
      case 'Online Steady':
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => Dashboard()),
        // );
        break;
      case 'JobKro':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Dashboard()),
        );
        break;
      case 'Matrimonial':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Bottom()),
        );
        break;
      case 'Foods':
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => Dashboard()),
        // );
        break;
      case 'Services':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => InitScreenServices()),
        );
        break;
    // Add more cases for additional categories/screens
      default:
      // Handle unknown category
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 8,right: 8),
        child: Row(
          children: categoryItems.map((item) {
            return GestureDetector(
              onTap: () {
                navigateToScreen(item['label']);
              },
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                     // color: item["color"],
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          item["color"],// Start color
                          item["color3"],// Start color
                        ],
                      ),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: Image.asset(
                              item["image"],
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors.white,
                                  width: 1.5),
                            ),
                            child: CircleAvatar(
                              backgroundColor: item["color2"],
                              radius: 9,
                              foregroundColor: Colors.white,
                              child: Image.asset(
                                item["image"],
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                  item['label'],
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Muli"
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
