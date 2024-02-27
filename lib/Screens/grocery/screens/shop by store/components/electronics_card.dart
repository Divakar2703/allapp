import 'package:all_app/Screens/grocery/data/models/response/HomePage/home_page_dynamic_response_model.dart';
import 'package:flutter/material.dart';

class ElectronicsCard extends StatefulWidget {
  final Data? product;

  ElectronicsCard({Key? key, this.product}) : super(key: key);

  @override
  State<ElectronicsCard> createState() => _ElectronicsCardState();
}

class _ElectronicsCardState extends State<ElectronicsCard> {
  List<String> image = [
    "assets/images/grocery_images/eardobs.png",
    "assets/images/grocery_images/bluetooth.png",
    "assets/images/grocery_images/Smart Watchhes.png",
    "assets/images/grocery_images/charging.png",
    "assets/images/grocery_images/sheadphone.png",
    "assets/images/grocery_images/kitchen.png",
  ];

  List<String> itemNames = [
    'boat Airdopes',
    'Bluetooth Device',
    'Smart Watches',
    'Charging Station',
    'boat Airdopes',
    'Bluetooth Device',
  ];

  List<String> itemDescriptions = [
    '123/431 TWS Ear...',
    'Sound high..',
    'amulate screens..',
    'fast charger',
    '123/431 TWS Ear...',
    'Sound high..',
  ];

  List<String> itemPrices = [
    'Rs.1099',
    'Rs.1999',
    'Rs.2499',
    'Rs.599',
    'Rs.1099',
    'Rs.1999',
  ];

  List<String> itemDiscountedPrices = [
    'Rs.2999',
    'Rs.2499',
    'Rs.2999',
    'Rs.799',
    'Rs.1099',
    'Rs.1999',
  ];

  List<String> itemUnits = [
    '4 unit',
    '3 unit',
    '12 unit',
    '5 unit',
    '7 unit',
    '11 unit',
  ];

  @override
  Widget build(BuildContext context) {
    return
      Container(
        margin: EdgeInsets.symmetric(horizontal: 2),
        width: 130,
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(4),
              height: 130,
              width: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.grey.shade400,
                ),
              ),
              child: Image.network(
                widget.product!.image.toString(),
              ),
            ),
            SizedBox(height: 5),
            // Display Text
            Text(
              widget.product!.productName.toString(),
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              widget.product!.productName.toString(),
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
            // SizedBox(height: 2),
            // Text(
            //   itemUnits[index],
            //   style: TextStyle(
            //     fontSize: 10,
            //     fontWeight: FontWeight.w500,
            //     color: Colors.grey.shade700,
            //   ),
            // ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '\u20B9 ${widget.product!.discountedPrice.toString()}',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Colors.black
                      ),
                    ),
                    Text(
                      '\u20B9 ${widget.product!.price.toString()}',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding:
                  EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: Colors.green,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'ADD',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.green,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      );  }
}
