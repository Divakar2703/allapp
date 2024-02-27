import 'package:flutter/material.dart';
import '../../subcategories_products/category_items_screen.dart';

class AllElectronicsProductsSquare extends StatelessWidget {
  final String categoryName;
  final String categoryImage;
  final Gradient gradient; // Change the type to Gradient

  const AllElectronicsProductsSquare({
    Key? key,
    required this.categoryName,
    required this.categoryImage,
    required this.gradient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CategoryItemsScreen()),
        );
      },
      child: Container(
        child: Column(
          children: [
            Container(
              width: 110,
              height: 70,
              decoration: BoxDecoration(
                gradient: gradient,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 8,),
                child: Image.asset(
                  categoryImage,
                ),
              ),
            ),
            SizedBox(height: 2),
            Expanded(
              child: Center(
                child: Text(
                  categoryName,
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AllElectronicsProducts extends StatelessWidget {
  const AllElectronicsProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 9.0,
        mainAxisSpacing: 4.0,
        childAspectRatio: 0.79,
      ),
      itemCount: 12,
      itemBuilder: (context, index) {
        List<String> categoryImages = [
          "assets/images/grocery_images/eardobs.png",
          "assets/images/grocery_images/bluetooth.png",
          "assets/images/grocery_images/Smart Watchhes.png",
          "assets/images/grocery_images/charging.png",
          "assets/images/grocery_images/sheadphone.png",
          "assets/images/grocery_images/kitchen.png",
          "assets/images/grocery_images/press.png",
          "assets/images/grocery_images/mouse.png",
          "assets/images/grocery_images/mouse.png",
          "assets/images/grocery_images/trimmers.png",
          "assets/images/grocery_images/Smart Watchhes.png",
          "assets/images/grocery_images/bluetooth.png",
        ];

        List<String> categoryNames = [
          'Earbuds &\Headsets',
          'Bluetooth\nSpeakers',
          'Smart\nWatches',
          'Charging\nCable',
          'Kichen\nAppliances',
          'Home\nAppliances',
          'Decorativev&\n LED Light',
          'Extenion\nCables',
          'Computer\nAccessories',
          'Trimmers',
          'Pooja\nStore',
          'Man\nStore',
        ];

        List<Gradient> gradients = [
          LinearGradient(
            colors: [
              Colors.purple.shade200,
              Colors.purple.shade400,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),

          LinearGradient(
            colors: [
              Colors.purple.shade200,
              Colors.purple.shade400,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),

          LinearGradient(
            colors: [
              Colors.purple.shade200,
              Colors.purple.shade400,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),

          LinearGradient(
            colors: [
              Colors.purple.shade200,
              Colors.purple.shade400,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),

          LinearGradient(
            colors: [
              Colors.purple.shade200,
              Colors.purple.shade400,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),

          LinearGradient(
            colors: [
              Colors.purple.shade200,
              Colors.purple.shade400,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),

          LinearGradient(
            colors: [
              Colors.purple.shade200,
              Colors.purple.shade400,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),

          LinearGradient(
            colors: [
              Colors.purple.shade200,
              Colors.purple.shade400,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),

          LinearGradient(
            colors: [
              Colors.purple.shade200,
              Colors.purple.shade400,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),

          LinearGradient(
            colors: [
              Colors.purple.shade200,
              Colors.purple.shade400,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),

          LinearGradient(
            colors: [
              Colors.purple.shade200,
              Colors.purple.shade400,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),

          LinearGradient(
            colors: [
              Colors.purple.shade200,
              Colors.purple.shade400,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ];

        return AllElectronicsProductsSquare(
          categoryName: categoryNames[index],
          categoryImage: categoryImages[index],
          gradient: gradients[index],
        );
      },
    );
  }
}
