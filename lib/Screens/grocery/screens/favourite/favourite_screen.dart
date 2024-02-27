import 'package:all_app/Screens/grocery/data/models/request/wishlistPage/WishListRequestModel.dart';
import 'package:all_app/Screens/grocery/helpers/column_with_seprator.dart';
import 'package:all_app/Screens/grocery/models/grocery_item.dart';
import 'package:all_app/Screens/grocery/viewmodels/view_model_wish_list_page.dart';
import 'package:all_app/Screens/grocery/widgets/chart_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../common_widgets/app_text.dart';
import '../../data/processResponse/status.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}
class _FavouriteScreenState extends State<FavouriteScreen> {
  WishListPageViewModel wishListPageViewModel = WishListPageViewModel();
  @override
  void initState() {
    final wishListRequestModel = WishListRequestModel(
      userId: '1'
    );
    // homePageViewModel.fetchHomePageData(data, context);
    wishListPageViewModel.fetchWishListData(wishListRequestModel, context);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5.0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: AppText(
            text: "My Favourite",
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: SafeArea(
        child:
        SafeArea(
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ChangeNotifierProvider<WishListPageViewModel>(
                create: (BuildContext context) => wishListPageViewModel,
                child: Consumer<WishListPageViewModel>(builder: (context, value, _) {
                  switch (value.wishListData.status ?? "") {
                    case Status.LOADING:
                      return const Expanded(
                          child: Center(child: CircularProgressIndicator()));
                    case Status.ERROR:
                      return const Text("Hello i am waiting error on Home page");
                    case Status.COMPLETED:
                      return Expanded(
                        child:
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 16,
                              ),

                              Column(
                                children: getChildrenWithSeperator(
                                  addToLastChild: false,
                                  widgets: demoItems.map((e) {
                                    return Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 25,
                                      ),
                                      width: double.maxFinite,
                                      child: ChartItemWidget(

                                      ),
                                    );
                                  }).toList(),
                                  seperator: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 25,
                                    ),
                                    child: Divider(
                                      thickness: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Divider(
                                thickness: 1,
                              ),
                            ],
                          ),
                        ),
                      );
                  }

                  return Container();
                }),
              ),
            ]
            )
        ),







      ),
    );
  }
}
