import 'package:flutter/material.dart';

class BeautySquare extends StatelessWidget {
  final String categoryName;
  final String categoryImage;

  const BeautySquare({
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
        width: 70, // Adjust the width as needed
        child: Column(
          children: [
            Container(
              width: 80,
              height: 70,
              decoration: BoxDecoration(
                color: Color(0xFFe5f3f3),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4),
                // child: CircleAvatar(
                //   radius: 30, // Adjust the size of the circle avatar as needed
                //   backgroundImage: AssetImage(categoryImage),
                //   backgroundColor: Colors.transparent,
                // ),
                child: Image.asset(categoryImage,
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

class Beauty extends StatelessWidget {
  const Beauty({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4, // Number of items in each row
        crossAxisSpacing: 4.0, // Horizontal spacing between items
        mainAxisSpacing: 8.0,
        childAspectRatio: 0.79,// Vertical spacing between items
      ),
      itemCount: 8, // Total number of items
      itemBuilder: (context, index) {
        // Replace the URLs with your actual category images
        List<String> categoryImages = [
          "assets/images/grocery_images/colget.png",
          "assets/images/grocery_images/mamaearth.png",
          "assets/images/grocery_images/Skin & Body Care.png",
          "assets/images/grocery_images/slipistic.png",
          "assets/images/grocery_images/wisper1.png",
          "assets/images/grocery_images/skids.png",
          "assets/images/grocery_images/mb.png",
          "assets/images/grocery_images/Baby Care.png",
          // Add more URLs as needed
        ];

        // Replace the category names with your actual category names
        List<String> categoryNames = [
          'Barth & Body',
          'Hair',
          'Skin & Face',
          'Beauty &\nCosmetics',
          'Feminine\nHygiene',
          'Baby Care',
          'Health &\nPharma',
          'Sexual Wellness',

          // Add more names as needed
        ];

        return BeautySquare(
          categoryName: categoryNames[index],
          categoryImage: categoryImages[index],
        );
      },
    );
  }
}
