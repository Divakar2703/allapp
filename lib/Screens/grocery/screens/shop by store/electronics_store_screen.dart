import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'components/all_elctronics_products.dart';
import 'components/electronics_card.dart';
import 'components/everyday_item.dart';

class ElectronicsStoreScreen extends StatefulWidget {
  const ElectronicsStoreScreen({Key? key}) : super(key: key);

  @override
  State<ElectronicsStoreScreen> createState() => _ElectronicsStoreScreenState();
}

class _ElectronicsStoreScreenState extends State<ElectronicsStoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/grocery_images/electronics_store_3.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            // Positioned widget to place the icon at a specific position on the image

            Positioned(
              top: 15,
              left: 10,
              child: Container(
                height: 36,
                width: 36,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black45,// Replace with desired color
                ),
               // padding: EdgeInsets.all(8),
               // padding: EdgeInsets.all(8),
                // child: Icon(Icons.arrow_back,color: Colors.white,
                //   size: 18,
                // )
                child: IconButton(
                  icon: Icon(Icons.arrow_back,color: Colors.white,size: 18,),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            Positioned(
              top: 15,
              right: 10,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black45,// Replace with desired color
                ),
                padding: EdgeInsets.all(8),
                child:  GestureDetector(
                  onTap: () {
                    // Handle tap event
                    // Add your share functionality here
                  },
                  child: SvgPicture.asset(
                    'assets/icons/share.svg',
                    height: 20,
                    width: 20,// Replace with your SVG file path
                    color: Colors.white, // Optionally set icon color
                  ),
                ),
              ),
            ),
            Positioned(
              top: 15,
              right: 55,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black45, // Replace with desired color
                ),
                padding: EdgeInsets.all(8),
                child: GestureDetector(
                  onTap: () {
                    // Handle tap event
                    // Add your share functionality here
                  },
                  child: SvgPicture.asset(
                    'assets/icons/Search Icon.svg',
                    height: 20,
                    width: 20,// Replace with your SVG file path
                    color: Colors.white, // Optionally set icon color
                  ),
                ),
              ),
            ),
            // Other content/widgets can be placed on top of the background
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height:120 ,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Electronics',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.black87,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Store',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.black87,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  Text(
                    'All your  electronic needs',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  Text(
                    'at one place!',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w500
                    ),
                  ),

                  SizedBox(height: 10,),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 310,
                        child: AllElectronicsProducts()),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment:CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Electifying deals',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 2,),
                            Text(
                              'Minimum 50% OFF',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey.shade600
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'see all',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: Colors.green
                          ),
                        ),
                      ],
                    ),
                  ),
                  // ElectronicsCard(),

                  Container(
                    margin: EdgeInsets.all(16),
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12)
                    ),

                    child: Image.asset(
                        "assets/images/grocery_images/banners1.jpg",
                  ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 4,right: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Everyday electronics',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'see all',
                          style: TextStyle(fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.green.shade600
                          ),
                        ),

                      ],
                    ),
                  ),

                  SizedBox(height: 15,),
                  Container(
                      height: 255, child: EverydayItem()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
