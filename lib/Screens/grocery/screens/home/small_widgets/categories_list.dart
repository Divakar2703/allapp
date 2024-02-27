import 'package:flutter/material.dart';

import '../../../data/models/response/HomePage/home_page_dynamic_response_model.dart';
import '../../subcategories_products/category_items_screen.dart';
import '../components/shop_category_square.dart';
import 'package:flutter/material.dart';

class CategoriesList extends StatefulWidget {
  final List<Category> categories;
  const CategoriesList({Key? key, required this.categories}) : super(key: key);

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 0.79,
          ),
          itemCount: widget.categories.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CategoryItemsScreen(category_id: widget.categories[index].catId.toString(),)),
                );
              },
              child: ShopCategorySquare(
                categoryName: widget.categories[index].catName.toString(),
                categoryImage:  widget.categories[index].catImage.toString(),
              ),
            );
          },
        );
      },
    );
  }
}
