import 'package:flutter/material.dart';

import '../../subcategories_products/category_items_screen.dart';
class SeeAll extends StatefulWidget {
  const SeeAll({Key? key}) : super(key: key);

  @override
  _SeeAllState createState() => _SeeAllState();
}

class _SeeAllState extends State<SeeAll> {
  // Define a list of image paths
  List<String> imagePaths = [
    "assets/images/grocery_images/kela.png",
    "assets/images/grocery_images/atta.png",
    "assets/images/grocery_images/mdh.png",
    "assets/images/grocery_images/bread.png",
    "assets/images/grocery_images/bakary.png",
    "assets/images/grocery_images/corn.png",
    "assets/images/grocery_images/meat.png",
    "assets/images/grocery_images/kichen.png",
    "assets/images/grocery_images/chips.png",
    "assets/images/grocery_images/choco.png",
    "assets/images/grocery_images/pepsi.png",
    "assets/images/grocery_images/tea.png",
    "assets/images/grocery_images/i.png",
    "assets/images/grocery_images/sos.png",
    "assets/images/grocery_images/meat.png",
    "assets/images/grocery_images/ice.png",
    "assets/images/grocery_images/colget.png",
    "assets/images/grocery_images/mamaearth.png",
    "assets/images/grocery_images/Skin & Body Care.png",
    "assets/images/grocery_images/slipistic.png",
    "assets/images/grocery_images/wisper1.png",
    "assets/images/grocery_images/skids.png",
    "assets/images/grocery_images/mb.png",
    "assets/images/grocery_images/Baby Care.png",
    "assets/images/grocery_images/kela.png",
    "assets/images/grocery_images/atta.png",
    "assets/images/grocery_images/mdh.png",
    "assets/images/grocery_images/bread.png",
    "assets/images/grocery_images/bakary.png",
    "assets/images/grocery_images/corn.png",
    "assets/images/grocery_images/meat.png",
    "assets/images/grocery_images/kichen.png",
  ];

  // Define a list of texts to display below each grid item
  List<String> itemTexts = [
    'Vegetables\n& Fruits',
    'Atta, Rice\n& Dal',
    'Oil, Ghee\n& Masala',
    'Dairy, Bread\nEggs',
    'Bakery &\nBiscuts',
    'Dry Fruits &\nCereals',
    'Chicken, Meat\n& Fish',
    'Kitchenwere &\nAppliances',
    'Chips &\nNamkeen',
    'Sweets &\nChocolates',
    'Drinks &\nJuices',
    'Tea,Coffee\n& Health ',
    'Instant\nFood',
    'Sauces &\nSpreads',
    'Paan\nCorner',
    'Ice Creams',
    'Barth & Body',
    'Hair',
    'Skin & Face',
    'Beauty &\nCosmetics',
    'Feminine\nHygiene',
    'Baby Care',
    'Health &\nPharma',
    'Sexual Wellness',
    'Vegetables\n& Fruits',
    'Atta, Rice\n& Dal',
    'Oil, Ghee\n& Masala',
    'Dairy, Bread\nEggs',
    'Bakery &\nBiscuts',
    'Dry Fruits &\nCereals',
    'Chicken, Meat\n& Fish',
    'Kitchenwere &\nAppliances',
  ];

  // Define a list of colors for gradient backgrounds
  // List<List<Color>> gradientColors = [
  //   [Colors.lightBlue.shade200, Colors.lightBlue.shade400], // Gradient for Item 1
  //   [Colors.green, Colors.lightGreen], // Gradient for Item 2
  //   [Colors.orange, Colors.deepOrange], // Gradient for Item 3
  //   [Colors.purple, Colors.deepPurple], // Gradient for Item 4
  //   // Add more gradients for each item in the list
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5.0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.only(left: 25),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        title: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: Text(
            "All Products",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(8.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, // 4 columns
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
          childAspectRatio: 0.75, // Adjust this value for the desired height
        ),
        itemCount: imagePaths.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CategoryItemsScreen()),
                  );
                },
                child: Container(
                  width: 80,
                  height: 70,
                  padding: EdgeInsets.only(left: 8,right: 8,top: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    // gradient: LinearGradient(
                    //   begin: Alignment.topCenter,
                    //   end: Alignment.bottomCenter,
                    //   colors: gradientColors[index % gradientColors.length],
                    //   stops: [0.0, 0.7], // Adjust stops as needed
                    // ),
                    color: Color(0xffe1fafa),
                  ),
                  // Example content inside each container
                  child: Image.asset(
                    imagePaths[index],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 4), // Add space between image and text
              Text(
                itemTexts[index],
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          );
        },
      ),
    );
  }
}
