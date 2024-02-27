import 'package:flutter/material.dart';
import '../../subcategories_products/category_items_screen.dart';

class ShopCategorySquare extends StatelessWidget {
  final String categoryName;
  final String categoryImage;

  const ShopCategorySquare({
    Key? key,
    required this.categoryName,
    required this.categoryImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Container(
        width: 70, // Adjust the width as needed
        child: Column(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: Color(0xFFe5f3f3),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                // child: CircleAvatar(
                //   radius: 30, // Adjust the size of the circle avatar as needed
                //   backgroundImage: AssetImage(categoryImage),
                //   backgroundColor: Colors.transparent,
                // ),
                child: Image.network(categoryImage,
                fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 4), // Add some spacing between the avatar and text
            Expanded(
              child: Text(
                categoryName,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.black
                  // Adjust the font weight as needed
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


