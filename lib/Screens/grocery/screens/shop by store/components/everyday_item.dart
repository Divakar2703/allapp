import 'package:flutter/material.dart';

class EverydayItemSquare extends StatelessWidget {
  final String categoryName;
  final String categoryImage;

  const EverydayItemSquare({
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
              margin: EdgeInsets.all(4),
              width: 170,
              height: 90,
              decoration: BoxDecoration(
                //  color: Color(0xFFe5f3f3),
                gradient: LinearGradient(
                  colors: [
                    Colors.purple.shade200,
                    Colors.purple.shade400,
                  ], // Replace these colors with your desired gradient colors
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp,
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
                    fontWeight: FontWeight.w500,
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


class EverydayItem extends StatelessWidget {
  const EverydayItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of items in each row
        crossAxisSpacing: 4.0, // Horizontal spacing between items
        mainAxisSpacing: 0.0,
        childAspectRatio: 1.4,// Vertical spacing between items
      ),
      itemCount: 4, // Total number of items
      itemBuilder: (context, index) {
        // Replace the URLs with your actual category images
        List<String> categoryImages = [

          "assets/images/grocery_images/bluetooth.png",
          "assets/images/grocery_images/Smart Watchhes.png",
          "assets/images/grocery_images/charging.png",
          "assets/images/grocery_images/sheadphone.png",

          // Add more URLs as needed
        ];

        // Replace the category names with your actual category names
        List<String> categoryNames = [

          'Home Upgrade',
          'Decorate Your Home',
          'Grooming Appliances',
          'Work & Travel Needs',


          // Add more names as needed
        ];

        return EverydayItemSquare(
          categoryName: categoryNames[index],
          categoryImage: categoryImages[index],
        );
      },
    );
  }
}
