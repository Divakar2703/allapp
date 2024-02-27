import 'package:all_app/Screens/grocery/common_widgets/app_text.dart';
import 'package:all_app/Screens/grocery/styles/colors.dart';
import 'package:flutter/material.dart';

import '../data/models/response/subCategory/SubCatProductResponseModel.dart';

class GroceryItemCardWidget extends StatelessWidget {
  GroceryItemCardWidget({Key? key, required this.product, this.heroSuffix})
      : super(key: key);
  final Product? product;
  final String? heroSuffix;
  final double width = 150;
  final double height = 450;
  final Color borderColor = Color(0xffE2E2E2);
  final double borderRadius = 18;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      // height: height,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
        ),
        borderRadius: BorderRadius.circular(
          borderRadius,
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded( // Wrap the Column with Expanded
              child: Center(
                child: Hero(
                  tag: "GroceryItem:" + product!.productName! + "-" + (heroSuffix ?? ""),
                  child: imageWidget(),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            AppText(
              text: product!.productName!,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
            AppText(
              text: product!.weight.toString(),
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xFF959595),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  text: "\Rs.${product!.discountedPrice!.toStringAsFixed(2)}",
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
                addWidget()
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget imageWidget() {
    return Container(
      height: 100, // Fixed height for the image
      width: 90,   // Fixed width for the image
      child: Image.network(
        product!.productImage!,
         // Adjust the image to cover the entire container
      ),
    );
  }

  Widget addWidget() {
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.primaryColor),
      child: Center(
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 18,
        ),
      ),
    );
  }
}
