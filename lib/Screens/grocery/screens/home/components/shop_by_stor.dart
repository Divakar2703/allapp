import 'package:flutter/material.dart';

import '../../shop by store/electronics_store_screen.dart';

class ShopeByStoreSquare extends StatelessWidget {
  final String categoryName;
  final String categoryImage;
  final Gradient gradient; // Change the type to Gradient

  const ShopeByStoreSquare({
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
          MaterialPageRoute(builder: (context) => ElectronicsStoreScreen()),
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
                padding: const EdgeInsets.only(left: 12, right: 12, top: 16),
                child: Image.asset(
                  categoryImage,
                ),
              ),
            ),
            SizedBox(height: 4),
            Expanded(
              child: Center(
                child: Text(
                  categoryName,
                  style: TextStyle(
                    fontSize: 12,
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

class ShopByStore extends StatelessWidget {
  const ShopByStore({Key? key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 16.0,
        childAspectRatio: 0.79,
      ),
      itemCount: 12,
      itemBuilder: (context, index) {
        List<String> categoryImages = [
          "assets/images/grocery_images/sgift.png",
          "assets/images/grocery_images/smonkey.png",
          "assets/images/grocery_images/sprintor.png",
          "assets/images/grocery_images/spet.png",
          "assets/images/grocery_images/sheadphone.png",
          "assets/images/grocery_images/spencil.png",
          "assets/images/grocery_images/skids.png",
          "assets/images/grocery_images/on_optimum.png",
          "assets/images/grocery_images/sbook.png",
          "assets/images/grocery_images/slipistic.png",
          "assets/images/grocery_images/spooja.png",
          "assets/images/grocery_images/christmas_decor.png",
        ];

        List<String> categoryNames = [
          'Gifting\nStore',
          'Toy\nStore',
          'Print\nStore',
          'Pet\nStore',
          'Electronics\nStore',
          'Stationery\nStore',
          'Kids\nStore',
          'Health\nStore',
          'Book\nStore',
          'Beauty\nStore',
          'Pooja\nStore',
          'Man\nStore',
        ];

        List<Gradient> gradients = [
          LinearGradient(
            colors: [
              Colors.red.shade100,
              Colors.red.shade300,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),

          LinearGradient(
            colors: [
              Colors.blue.shade200,
              Colors.blue.shade300,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),

          LinearGradient(
            colors: [
              Colors.purpleAccent.shade100,
              Colors.purple.shade400,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),

          LinearGradient(
            colors: [
              Colors.orange.shade200,
              Colors.orange.shade400,
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
              Colors.green.shade200,
              Colors.green.shade400,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),

          LinearGradient(
            colors: [
              Colors.pink.shade100,
              Colors.pink.shade400,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),

          LinearGradient(
            colors: [
              Colors.lightGreen.shade200,
              Colors.lightGreen.shade400,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),

          LinearGradient(
            colors: [
              Colors.redAccent.shade100,
              Colors.redAccent.shade400,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),

          LinearGradient(
            colors: [
              Colors.pink.shade100,
              Colors.pink.shade400,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),

          LinearGradient(
            colors: [
              Colors.orange,
              Colors.pink,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),

          LinearGradient(
            colors: [
              Colors.blue.shade200,
              Colors.blue.shade400,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ];

        return ShopeByStoreSquare(
          categoryName: categoryNames[index],
          categoryImage: categoryImages[index],
          gradient: gradients[index],
        );
      },
    );
  }
}
