import 'package:all_app/Screens/grocery/common_widgets/app_button.dart';
import 'package:all_app/Screens/grocery/data/models/request/cartPage/CartPageRequestModel.dart';
import 'package:all_app/Screens/grocery/viewmodels/view_model_cart_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../common_widgets/app_text.dart';
import '../../data/processResponse/status.dart';
import 'component/checkout_bottom_sheet.dart';

class CartScreen extends StatefulWidget {
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  CartPageViewModel cartPageViewModel  = CartPageViewModel();
  @override
  void initState() {
    final cartPageRequestModel = CartPageRequestModel(
        userId: '1'
    );
    // homePageViewModel.fetchHomePageData(data, context);
    cartPageViewModel.fetchCartPageData(cartPageRequestModel, context);
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
        title: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: AppText(
            text: "My Cart",
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: SafeArea(
        child:  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ChangeNotifierProvider<CartPageViewModel>(
            create: (BuildContext context) => cartPageViewModel,
            child: Consumer<CartPageViewModel>(builder: (context, value, _) {
              switch (value.cartPageData.status ?? "") {
                case Status.LOADING:
                  return const Expanded(
                      child: Center(child: CircularProgressIndicator()));
                case Status.ERROR:
                  return const Text("Hello i am waiting error on Home page");
                case Status.COMPLETED:
                  return Expanded(
                    child:
                      Text('Hello')
                  );
              }

              return Container();
            }),
          ),
        ]






      //   SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         SizedBox(
      //           height: 16,
      //         ),
      //
      //         // Column(
      //         //   children: getChildrenWithSeperator(
      //         //     addToLastChild: false,
      //         //     widgets: demoItems.map((e) {
      //         //       return Container(
      //         //         padding: EdgeInsets.symmetric(
      //         //           horizontal: 25,
      //         //         ),
      //         //         width: double.maxFinite,
      //         //         child:
      //         //         // ChartItemWidget(
      //         //         //   item: e,
      //         //         // ),
      //         //       );
      //         //     }).toList(),
      //         //     seperator: Padding(
      //         //       padding: const EdgeInsets.symmetric(
      //         //         horizontal: 25,
      //         //       ),
      //         //       child: Divider(
      //         //         thickness: 1,
      //         //       ),
      //         //     ),
      //         //   ),
      //         // ),
      //         Divider(
      //           thickness: 1,
      //         ),
      //         getCheckoutButton(context)
      //       ],
      //     ),
        ),
      ),
    );
  }

  Widget getCheckoutButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: AppButton(
        label: "Go To Check Out",
        fontWeight: FontWeight.w600,
        padding: EdgeInsets.symmetric(vertical: 30),
        trailingWidget: getButtonPriceWidget(),
        onPressed: () {
          showBottomSheet(context);
        },
      ),
    );
  }

  Widget getButtonPriceWidget() {
    return Container(
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Color(0xff489E67),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        "Rs.12.96",
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
    );
  }

  void showBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (BuildContext bc) {
          return CheckoutBottomSheet();
        });
  }
}
