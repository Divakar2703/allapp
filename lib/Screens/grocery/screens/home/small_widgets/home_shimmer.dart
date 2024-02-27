import 'package:all_app/Screens/grocery/screens/home/small_widgets/subtitle.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../styles/colors.dart';
import '../components/banner.dart';
import '../components/search_field.dart';
import 'location_widgets.dart';

Widget buildHomeShimmer() {
  return Shimmer.fromColors(
    baseColor: Colors.grey[300]!,
    highlightColor: Colors.grey[100]!,
    child: ListView(
      children: [
        Material(
          elevation: 4,
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
          ),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              children: [
                LocationWidget(locality: 'locality', state: 'state',),
                const SizedBox(height: 16),
                const SearchField(),
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
        SliderScreen(),
        SizedBox(height: 8),
        Container(child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: subTitle('Grocery and Kitchen'),
        )),
        CategoriesListShimmer(),
        SizedBox(height: 8),
        Container(child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: subTitle('Snacks and Drinks'),
        )),
        CategoriesListShimmer(),
        SizedBox(height: 8),
        Center(child: Container(child: subTitle('Beauty and Personal Care'))),
        CategoriesListShimmer(),
        SizedBox(height: 8),
        SliderScreen(),
        SizedBox(height: 10),
      ],
    ),
  );
}


class CategoriesListShimmer extends StatefulWidget {
  const CategoriesListShimmer({Key? key,}) : super(key: key);

  @override
  State<CategoriesListShimmer> createState() => _CategoriesListShimmerState();
}

class _CategoriesListShimmerState extends State<CategoriesListShimmer> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 4.0,
            childAspectRatio: 0.79,
          ),
          itemCount:8,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return ShopCategorySquareShimmer(
            );
          },
        );
      },
    );
  }
}

class ShopCategorySquareShimmer extends StatelessWidget {

  const ShopCategorySquareShimmer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Container(
        width: 70, // Adjust the width as needed
        child: Column(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: Color(0xFFe5f3f3),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            SizedBox(height: 4), // Add some spacing between the avatar and text
            Expanded(
              child: Text(
                'Category',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                  // Adjust the font weight as needed
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
