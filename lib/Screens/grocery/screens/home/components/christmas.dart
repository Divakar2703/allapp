import 'package:flutter/material.dart';


class ChristmsSquare extends StatelessWidget {
  final String categoryName;
  final String categoryImage;

  const ChristmsSquare({
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
              //  color: Color(0xFFe5f3f3),
                image: DecorationImage(
                  image: AssetImage( "assets/images/grocery_images/cback2.png",), // Replace with your image path
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12),
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
            SizedBox(height: 4), // Add some spacing between the avatar and text
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

class Christms extends StatelessWidget {
  const Christms({super.key});

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

          "assets/images/grocery_images/christmas_decor.png",
          "assets/images/grocery_images/gifting.png",
          "assets/images/grocery_images/c2.png",
          "assets/images/grocery_images/cake.png",
          "assets/images/grocery_images/kids_cloth.png",
          "assets/images/grocery_images/christmas_decor.png",
          // Add more URLs as needed
        ];

        // Replace the category names with your actual category names
        List<String> categoryNames = [

          'Christmas Decor',
          'Gifting Corner',
          'Party Essentials',
          'Cakes Corner',
          'Kids Special',
          'Christmas Checklist',

          // Add more names as needed
        ];

        return ChristmsSquare(
          categoryName: categoryNames[index],
          categoryImage: categoryImages[index],
        );
      },
    );
  }
}
