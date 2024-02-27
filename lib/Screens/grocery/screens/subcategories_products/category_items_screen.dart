import 'package:all_app/Screens/grocery/common_widgets/app_text.dart';
import 'package:all_app/Screens/grocery/data/constants/app_constants_value.dart';
import 'package:all_app/Screens/grocery/data/models/request/subCategory/SubCatListRequestModel.dart';
import 'package:all_app/Screens/grocery/helpers/empty_animation.dart';
import 'package:all_app/Screens/grocery/helpers/loading.dart';
import 'package:all_app/Screens/grocery/screens/product_details/product_details_screen.dart';
import 'package:all_app/Screens/grocery/screens/subcategories_products/component/right_verticle_sub_category.dart';
import 'package:all_app/Screens/grocery/viewmodels/view_model_sub_category.dart';
import 'package:all_app/Screens/grocery/widgets/grocery_item_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../data/models/request/subCategory/SubCatProductsRequestModel.dart';
import '../../data/models/response/subCategory/SubCatProductResponseModel.dart';
import '../../data/processResponse/status.dart';
import '../subcategories_products/filter_screen.dart';
import 'component/shimmer.dart';

class CategoryItemsScreen extends StatefulWidget {
  final String? category_id;

  const CategoryItemsScreen({Key? key, this.category_id}) : super(key: key);
  @override
  State<CategoryItemsScreen> createState() => _CategoryItemsScreenState();
}

class _CategoryItemsScreenState extends State<CategoryItemsScreen> {
  SubCategoryViewModel subCategoryViewModel = SubCategoryViewModel();
  List<Product> products = []; // List to hold fetched products
  bool isExpanded = true; // Track whether to expand the widget containing StaggeredGrid
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    final subCatListRequestModel = SubCatListRequestModel(categoryId: widget.category_id.toString(),userId: Constants.userIdForUse);
    subCategoryViewModel.fetchSubCatData(subCatListRequestModel, context);

    fetchData('8');
  }

  Future<void> fetchData(String subcategoryId) async {
    setState(() {
      isLoading = true;
    });
    await getProductsList(subcategoryId);
    setState(() {
      isLoading = false;
    });
  }

  Future<void> getProductsList(String subcategoryId) async {
    final subCatProductsRequestModel = SubCatProductsRequestModel(
        subcategoryId: subcategoryId, userId: Constants.userIdForUse, pageno: '1');
    final productsResponse = await subCategoryViewModel.fetchSubCatProductsData(
        subCatProductsRequestModel, context);
    setState(() {
      isExpanded = true;
      // products = productsResponse.product ?? []; // Update products list
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5.0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.only(left: 25),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FilterScreen()),
              );
            },
            child: Container(
              padding: EdgeInsets.only(right: 25),
              child: Icon(
                Icons.sort,
                color: Colors.black,
              ),
            ),
          ),
        ],
        title: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: AppText(
            text: "Sub Categories",
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ChangeNotifierProvider<SubCategoryViewModel>(
              create: (BuildContext context) => subCategoryViewModel,
              child: Consumer<SubCategoryViewModel>(
                builder: (context, value, _) {
                  switch (value.subCatData.status ?? "") {
                    case Status.LOADING:
                      return Expanded(
                        child: Center(child: LoadingAnimation()),
                      );
                    case Status.ERROR:
                      return Expanded(child: EmptyAnimation());

                    case Status.COMPLETED:
                      return Expanded(
                        child: Container(
                          height: double.infinity,
                          color: Colors.blueAccent.withOpacity(0.25),
                          child: Row(
                            children: [
                              SizedBox(width: 4.0),
                              Expanded(
                                child: MyWidget(
                                  subCatProductsData: value.subCatProductsData.data,
                                  isExpanded: isExpanded,
                                  isLoading: isLoading,
                                ),
                              ),
                              SizedBox(width: 4.0),
                              RightVerticleSubCategoryList(
                                subCatData: value.subCatData,
                                // onTapCallback: (String subcategoryId) {
                                //   fetchData();
                                //   // setState(() {
                                //   //   isExpanded = !isExpanded;
                                //   // });
                                // },
                                onTapCallback: (String subcategoryId) {
                                  print("Selected Subcategory ID: $subcategoryId");
                                  // Use the subcategory ID as needed
                                  fetchData(subcategoryId);
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                  }

                  return Container();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  final SubCatProductsResponseModel? subCatProductsData;
  final bool isExpanded;
  final bool isLoading;

  const MyWidget({
    Key? key,
    required this.subCatProductsData,
    required this.isExpanded,
    required this.isLoading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        isExpanded
            ? Align(
          alignment: Alignment.topLeft,
          child: isLoading
              ? buildShimmerGridView()
              : _buildGridView(),
        )
            : Center(child: (EmptyAnimation())), // Return an empty widget if not expanded
      ],
    );
  }



  Widget _buildGridView() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 0.0,
        mainAxisSpacing: 3.0,
      ),
      itemCount: (subCatProductsData?.product ?? []).length,
      itemBuilder: (context, index) {
        final product = subCatProductsData?.product?[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductDetailsScreen(
                  product!.id.toString(),
                  heroSuffix: "explore_screen",
                ),
              ),
            );
          },
          child: Container(
            padding: EdgeInsets.all(4),
            child: GroceryItemCardWidget(
              product: product,
              heroSuffix: "explore_screen",
            ),
          ),
        );
      },
    );
  }
}
