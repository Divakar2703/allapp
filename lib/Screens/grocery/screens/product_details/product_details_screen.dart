import 'package:all_app/Screens/grocery/common_widgets/app_text.dart';
import 'package:all_app/Screens/grocery/data/models/request/productDetailsPage/ProductDetailsRequestModel.dart';
import 'package:all_app/Screens/grocery/data/models/response/subCategory/SubCatProductResponseModel.dart';
import 'package:all_app/Screens/grocery/helpers/empty_animation.dart';
import 'package:all_app/Screens/grocery/screens/product_details/components/product_details_shimmer.dart';
import 'package:all_app/Screens/grocery/screens/product_details/components/product_images.dart';
import 'package:all_app/Screens/grocery/styles/colors.dart';
import 'package:all_app/Screens/grocery/viewmodels/view_model_product_details.dart';
import 'package:all_app/Screens/grocery/widgets/item_counter_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../../data/constants/app_constants_value.dart';
import '../../data/processResponse/status.dart';
import '../../widgets/grocery_item_card_widget.dart';
import 'components/add_to_basket_dialog.dart';
import 'components/favourite_toggle_icon_widget.dart';

class ProductDetailsScreen extends StatefulWidget {
  final String product_id;
  final String? heroSuffix;

  const ProductDetailsScreen(this.product_id, {this.heroSuffix});

  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}


class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  ProductDetailsViewModel productDetailsViewModel = ProductDetailsViewModel();
    Future<void> share() async {
      print("=====enter========");
      await FlutterShare.share(
          title: 'Order Now (Special OFFER!)',
          text: productDetailsViewModel.productName,
          linkUrl:productDetailsViewModel.productImage,
          chooserTitle: 'Order now and get the 30% OFF!');

    }

  @override
  void initState() {
    final productDetailsRequestModel = ProductDetailsRequestModel(
      productId: widget.product_id,
      userId: Constants.userIdForUse
    );
    // homePageViewModel.fetchHomePageData(data, context);

    productDetailsViewModel.fetchProductDetailsPageData(
        productDetailsRequestModel, context);
    super.initState();
  }

  int amount = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ChangeNotifierProvider<ProductDetailsViewModel>(
          create: (BuildContext context) => productDetailsViewModel,
          child:
              Consumer<ProductDetailsViewModel>(builder: (context, value, _) {
            switch (value.productDetailsData.status ?? "") {
              case Status.LOADING:
                return Expanded(
                    child: buildShimmerProductDetails());
              case Status.ERROR:
                return Expanded(
                    child: Center(child: EmptyAnimation()));
              case Status.COMPLETED:
                return Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ProductImages(
                          product: value.productDetailsData.data!,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 0.1),
                          child: Column(
                            children: [
                              ListTile(
                                contentPadding: EdgeInsets.zero,
                                title: Text(
                                  value.productDetailsData.data!.productName
                                      .toString(),
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w800),
                                ),
                                subtitle:
                                AppText(
                                 text: 'Weight/Qty ${value.productDetailsData.data!.multiweight![0].weight.toString()}'
                                      ,
                                ),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    // FavoriteToggleIcon(),
                                    SizedBox(width: 8),
                                    // Adjust as needed
                                    InkWell(
                                      onTap: () {
                                        share();
                                      },
                                      child: SvgPicture.asset(
                                        'assets/icons/share.svg',
                                        // Replace with your SVG file path
                                        width: 24,
                                        // Adjust width as needed
                                        height: 24,
                                        // Adjust height as needed
                                        color: Colors
                                            .blueGrey, // Optionally set icon color
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ItemCounterWidget(
                                    onAmountChanged: (newAmount) {
                                      setState(() {
                                        amount = newAmount;
                                      });
                                    },
                                  ),
                                  Text(
                                    "Rs." +
                                        "${getTotalPrice().toStringAsFixed(2)}",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              getProductDataRowWidget("Product Details"),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'The Lay’s India’s Magic Masala spice blend will excite'
                                    ' your tastebuds Made from the highest quality,'
                                    ' farm-grown potatoes.Lay’s India’s Magic Masala is a'
                                    ' 100% vegetarian snack.A versatile snack that can be '
                                    'enjoyed in any setting.Lay’s is always on the lookout '
                                    'for the best flavours, cuts, and innovations that '
                                    'are guaranteed to bring a smile to your face.',
                                style: TextStyle(
                                    fontSize: 11, color: Colors.grey.shade700),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              getHorizontalItemSlider4(value.productDetailsData.data!.related??[]),


                              // getProductDataRowWidget("Nutritions",
                              //     customWidget: nutritionWidget()),
                              getProductDataRowWidget(
                                "Review",
                                customWidget: ratingWidget(),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: AppColors.lightGreyGreen, backgroundColor: AppColors.primaryColor, // Change the text color to white
                                ),
                                onPressed: () {
                                  onAddToBasketClicked();
                                },
                                child: Text("Add To Basket"),
                              )
,
                              SizedBox(
                                height: 40,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
            }
            return Container();
          }),
        ),
      ])),
    );
  }

  void onAddToBasketClicked() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AddToBasketDialog();
        });
  }



  Widget getProductDataRowWidget(String label, {Widget? customWidget}) {
    return Container(
      margin: EdgeInsets.only(
        top: 8,
        // bottom: 20,
      ),
      child: Row(
        children: [
          AppText(text: label, fontWeight: FontWeight.w600, fontSize: 15),
          Spacer(),
          if (customWidget != null) ...[
            customWidget,
            SizedBox(
              width: 20,
            )
          ],
          Icon(
            Icons.arrow_forward_ios,
            size: 14,
          )
        ],
      ),
    );
  }

  Widget subTitle(String text) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        Spacer(),
      ],
    );
  }

  Widget padded(Widget widget) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0),
      child: widget,
    );
  }

  Widget getHorizontalItemSlider4(List<Product> items) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.transparent,
        ),
        color: Colors.transparent,
      ),
      //height: 20,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          padded(subTitle("Similar Products")),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.transparent,
              ),
              color: Colors.transparent,
            ),
            height: 200,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
              ),
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 5),
                itemCount: items.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      onItemClicked(context, items[index]);
                    },
                    child: GroceryItemCardWidget(
                      product: items[index],
                      heroSuffix: "home_screen",
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(width: 12);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onItemClicked(BuildContext context, Product product) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDetailsScreen(
          product.id!,
          heroSuffix: "home_screen",
        ),
      ),
    );
  }

  Widget nutritionWidget() {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Color(0xffEBEBEB),
        borderRadius: BorderRadius.circular(5),
      ),
      child: AppText(
        text: "100gm",
        fontWeight: FontWeight.w600,
        fontSize: 12,
        color: Color(0xff7C7C7C),
      ),
    );
  }

  Widget ratingWidget() {
    Widget starIcon() {
      return Icon(
        Icons.star,
        color: Color(0xffF3603F),
        size: 20,
      );
    }

    return Row(
      children: [
        starIcon(),
        starIcon(),
        starIcon(),
        starIcon(),
        starIcon(),
      ],
    );
  }

  double getTotalPrice() {
    return amount *productDetailsViewModel.amount;
  }
}
