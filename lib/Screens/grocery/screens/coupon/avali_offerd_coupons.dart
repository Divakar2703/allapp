import 'package:all_app/Screens/grocery/screens/coupon/component/coupon_list_item.dart';
import 'package:all_app/Screens/grocery/styles/colors.dart';
import 'package:all_app/Screens/grocery/viewmodels/view_model_coupon_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../common_widgets/app_text.dart';
import '../../data/models/response/coupon/CouponListResponseModel.dart';
import '../../data/processResponse/status.dart';
import '../home/components/home_end_screen.dart';

class CouponsScreen extends StatefulWidget {
  const CouponsScreen({Key? key}) : super(key: key);

  @override
  State<CouponsScreen> createState() => _CouponsScreenState();
}

class _CouponsScreenState extends State<CouponsScreen> {
  CouponViewModel couponViewModel = CouponViewModel();
  String _searchQuery = '';

  @override
  void initState() {
    Map data = {"": ""};
    couponViewModel.fetchCouponListData(data, context);
    super.initState();
  }

  void applyCoupon() {
    print('applied coupon called');
  }

  List<CouponCode>? _filteredCoupons(List<CouponCode>? coupons) {
    if (coupons == null) return null;
    if (_searchQuery.isEmpty) return coupons;
    return coupons
        .where((coupon) =>
        coupon.promoCodeName!
            .toLowerCase()
            .contains(_searchQuery.toLowerCase()))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 7.0,
        centerTitle: true,
        title: Container(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: AppText(
            text: "Coupons",
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black87,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: ChangeNotifierProvider<CouponViewModel>(
        create: (BuildContext context) => couponViewModel,
        child: Consumer<CouponViewModel>(
          builder: (context, value, _) {
            final filteredCoupons =
            _filteredCoupons(value.couponData.data?.couponCode);
            return Column(
              children: [
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                    child: TextFormField(
                      onChanged: (value) {
                        setState(() {
                          _searchQuery = value;
                        });
                      },
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: AppColors.lightGreyGreen,
                        hintStyle: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.w400),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        hintText: "Search Coupon",
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Expanded(
                  child: value.couponData.status == Status.LOADING
                      ? Center(child: CircularProgressIndicator())
                      : value.couponData.status == Status.ERROR
                      ? HomeEndScreen()
                      : SingleChildScrollView(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: ListView.builder(
                        itemCount: filteredCoupons?.length ?? 0,
                        shrinkWrap: true,
                        physics:
                        const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          final coupon = filteredCoupons![index];
                          return GestureDetector(
                            onTap: () {
                              applyCoupon();
                            },
                            child: CouponListItem(
                              code: coupon,
                              onTapCallback: () {  },
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
