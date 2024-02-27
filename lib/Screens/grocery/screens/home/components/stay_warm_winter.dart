import 'package:flutter/material.dart';

class StayWarmWinterSquare extends StatelessWidget {
  final String categoryName;
  final String categoryImage;

  const StayWarmWinterSquare({
    Key? key,
    required this.categoryName,
    required this.categoryImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => CategoryItemsScreen()),
        // );
      },
      child: Container(
        child: Column(
          children: [
            Container(
              width: 110,
              height: 76,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xffc6fbfb),
                Color(0xff52c3c3), // End color
              ],
            )
          ),
              child: Padding(
                padding: const EdgeInsets.only(left: 12,right: 12,top: 16),
                // child: CircleAvatar(
                //   radius: 30, // Adjust the size of the circle avatar as needed
                //   backgroundImage: AssetImage(categoryImage),
                //   backgroundColor: Colors.transparent,
                // ),
                child: Image.asset(categoryImage,

                ),
              ),
            ),
            SizedBox(height: 5), // Add some spacing between the avatar and text
            Expanded(
              child: Text(
                categoryName,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black
                  // Adjust the font weight as needed
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class StayWarmWinter extends StatelessWidget {
  const StayWarmWinter({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // Number of items in each row
        crossAxisSpacing: 8.0, // Horizontal spacing between items
        mainAxisSpacing: 0.0, // Vertical spacing between items
      ),
      itemCount: 6, // Total number of items
      itemBuilder: (context, index) {
        // Replace the URLs with your actual category images
        List<String> categoryImages = [

          "assets/images/grocery_images/Snacks & Meal.png",
          "assets/images/grocery_images/Hot Beverages.png",
          "assets/images/grocery_images/Immunity.png",
          "assets/images/grocery_images/Skin & Body Care.png",
          "assets/images/grocery_images/Baby Care.png",
          "assets/images/grocery_images/Winter Saviours.png",
          // Add more URLs as needed
        ];

        // Replace the category names with your actual category names
        List<String> categoryNames = [

          'Snicks & Meals',
          'Hot Beverages',
          'Immunity & Wellness',
          'Skin & Body Care',
          'Baby Care',
          'Winter Saviours',

          // Add more names as needed
        ];

        return StayWarmWinterSquare(
          categoryName: categoryNames[index],
          categoryImage: categoryImages[index],
        );
      },
    );
  }
}
