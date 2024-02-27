import 'package:flutter/material.dart';

import '../../home/components/shop_category_screen.dart';

class RightVerticleSubCategoryList extends StatefulWidget {
  final dynamic subCatData;
  final void Function(String)? onTapCallback;

  const RightVerticleSubCategoryList({
    Key? key,
    required this.subCatData,
    required this.onTapCallback,
  }) : super(key: key);

  @override
  State<RightVerticleSubCategoryList> createState() => _RightVerticleSubCategoryListState();
}

class _RightVerticleSubCategoryListState extends State<RightVerticleSubCategoryList> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return
      Material(
      elevation: 4.0,
      child: Container(
        height: double.infinity, // Set a specific height
        width: 70,
        child:
        ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(), // Uncomment this line
          children: List.generate(widget.subCatData?.data?.subcategory?.length ?? 0, (index) {
            final subCatList = widget.subCatData?.data?.subcategory?[index];
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
                // Call the callback function
                widget.onTapCallback?.call(subCatList!.id.toString());
              },
              child: ShopCategory(
                categoryName: subCatList?.subcatName.toString() ?? '',
                categoryImage: subCatList?.subcatImage.toString() ?? '',
                isSelected: index == selectedIndex,
              ),
            );
          }),
        ),
      ),
    );
  }
}