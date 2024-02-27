import 'package:flutter/material.dart';


class BrandSpotlightSquare extends StatelessWidget {
  final String logoImage;
  final String categoryImage;

  const BrandSpotlightSquare({
    Key? key,
    required this.logoImage,
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
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFD3EFDE),
              Color(0xFF30D371),
            ], // Replace these colors with your desired gradient colors
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            SizedBox(height: 1,),

            Image.asset( logoImage,
              height: 32

              //  width: 120,
            ),

            Image.asset(categoryImage,
            height: 83 ,
            //  width: 120,
          ),
        ]
        ),
      ),
    );
  }
}

class BrandSpotlight extends StatelessWidget {
  const BrandSpotlight({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // Number of items in each row
        crossAxisSpacing: 4.0, // Horizontal spacing between items
        mainAxisSpacing: 4.0,
        childAspectRatio: 0.85, // Vertical spacing between items
      ),
      itemCount: 1, // Total number of items
      itemBuilder: (context, index) {
        // Replace the URLs with your actual category images
        List<String> categoryImages = [
          "assets/images/grocery_images/c2.png",
          // "assets/images/grocery_images/on_optimum.png",
          // "assets/images/grocery_images/mb.png",
          // "assets/images/grocery_images/colget.png",
          // "assets/images/grocery_images/mamaearth.png",
          // "assets/images/grocery_images/wisper1.png",
          // "assets/images/grocery_images/gara.png",
          // "assets/images/grocery_images/earth.png",
          // "assets/images/grocery_images/oleev.png",
          // Add more URLs as needed
        ];

        List<String> logoImages = [

          "assets/images/grocery_images/cl.png",
          // "assets/images/grocery_images/on_l.png",
          // "assets/images/grocery_images/mb_l.png",
          // "assets/images/grocery_images/colget_l.png",
          // "assets/images/grocery_images/mamaearth_l.png",
          // "assets/images/grocery_images/wisper_l.png",
          // "assets/images/grocery_images/garal.png",
          // "assets/images/grocery_images/earthl.png",
          // "assets/images/grocery_images/oleevl.png",
          // Add more URLs as needed
        ];

        // Replace the category names with your actual category names

        return BrandSpotlightSquare(
          logoImage: logoImages[index] ,
          categoryImage: categoryImages[index],
        );
      },
    );
  }
}
