import 'package:all_app/Screens/grocery/styles/colors.dart';
import 'package:flutter/material.dart';

class ShopCategory extends StatelessWidget {
  final String categoryName;
  final String categoryImage;
  final bool isSelected;

  const ShopCategory({
    Key? key,
    required this.categoryName,
    required this.categoryImage,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 4.0),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 0.0, 4.0),
              width: 8,
              decoration: BoxDecoration(
                color: isSelected ? Colors.blueAccent.withOpacity(0.25) : Colors.transparent,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16), // Apply border radius to top right corner
                  bottomRight: Radius.circular(16), // Apply border radius to bottom right corner
                ),
              ),
            ),
            SizedBox(width: 4,),
            Container(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 0.0, 4.0),
              width: 56,
              decoration: BoxDecoration(
                color: isSelected ? Colors.blueAccent.withOpacity(0.25) : AppColors.primaryColor.withOpacity(0.25),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16), // Apply border radius to top right corner
                  bottomLeft: Radius.circular(16), // Apply border radius to bottom right corner
                ),
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 48,
                    width: 40, // Set the height of the container
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(categoryImage),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    categoryName,
                    style: TextStyle(
                      color: isSelected? Colors.blueAccent: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ShopCategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      ListView(
      scrollDirection: Axis.vertical, // Horizontal scrolling list
      children: [
        ShopCategory(
          categoryName: 'Beauty',
          categoryImage: "https://grossry.56testing.club/media/category/clean.png",
          isSelected: true,
        ),
        ShopCategory(
          categoryName: 'Baby Care',
          categoryImage: "http://grossry.56testing.club/media/category/child2.png",
          isSelected: true,
        ),
        ShopCategory(
          categoryName: 'Vegetables',
          categoryImage: "http://grossry.56testing.club/media/category/app.png",
          isSelected: true,
        ),
        ShopCategory(
          categoryName: 'Masalas',
          categoryImage: "http://grossry.56testing.club/media/category/oil.png",
          isSelected: true,
        ),
        ShopCategory(
          categoryName: 'Beverages',
          categoryImage: "http://grossry.56testing.club/media/category/red1.png",
          isSelected: true,
        ),
        ShopCategory(
          categoryName: 'Fruit',
          categoryImage: "http://grossry.56testing.club/media/category/apple.png",
          isSelected: true,
        ),
        // Add more ShopCategory widgets with different names and icons as needed
      ],
    );
  }
}




