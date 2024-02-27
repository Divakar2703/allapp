import 'package:all_app/Screens/grocery/screens/shop%20by%20store/components/electronics_card.dart';
import 'package:flutter/material.dart';

import '../../../data/models/response/HomePage/home_page_dynamic_response_model.dart';
import '../../../models/grocery_item.dart';
import '../../../widgets/grocery_item_card_widget.dart';
import '../../product_details/product_details_screen.dart';

Widget getHorizontalItemSlider(List<Data>? items) {
  print('horizontal data===$items');
  return Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      // SizedBox(height: 8.0),
      // padded(subTitle("Latest Product Added")),
      Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.transparent,
          ),
          color: Colors.transparent,
        ),
        margin: EdgeInsets.symmetric(vertical: 5),
        height: 225,
        child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 20),
          itemCount: 8,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                onItemClicked(context, items![index]);
              },
              child: ElectronicsCard(
                product: items![index],
                // heroSuffix: "home_screen",
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(width: 20);
          },
        ),
      ),
      // Container(
      //   height: 40.0,
      //   decoration: BoxDecoration(
      //     border: Border.all(
      //       color: Colors.transparent,
      //     ),
      //     color: Colors.orange.withOpacity(0.20),
      //   ),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     children: [
      //       Text(
      //         '   See All Products',
      //         style: TextStyle(
      //             color: Colors.black,
      //             fontSize: 14,
      //             fontWeight: FontWeight.w500),
      //       ),
      //     ],
      //   ),
      // )
    ],
  );
}
void onItemClicked(BuildContext context, Data data) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) =>
          ProductDetailsScreen(
            data.id.toString(),
            heroSuffix: "home_screen",
          ),
    ),
  );
}
