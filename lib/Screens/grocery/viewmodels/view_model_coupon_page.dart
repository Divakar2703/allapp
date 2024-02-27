import 'dart:io';
import 'package:all_app/Screens/grocery/data/models/response/coupon/CouponListResponseModel.dart';
import 'package:all_app/Screens/grocery/repositories/repo_coupon_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../data/processResponse/api_process_response.dart';

class CouponViewModel with ChangeNotifier {
  final _couponRepo = CouponRepository();

  ApiProcessResponse<CouponListResponseModel> couponData = ApiProcessResponse.loading();
  setCouponListData(ApiProcessResponse<CouponListResponseModel> response) {
    couponData = response;
    notifyListeners();
  }

  Future<void> fetchCouponListData(dynamic data,BuildContext context) async {
    setCouponListData(ApiProcessResponse.loading());
    try {
      final CouponListResponseModel couponListResponseModel = await _couponRepo.fetchCouponListData(data);
      setCouponListData(ApiProcessResponse.completed(couponListResponseModel));

      if (kDebugMode) {
        print("Data aa ha hai${couponListResponseModel.status}");
      }

    } catch (error) {
      if (error is SocketException) {
        setCouponListData(ApiProcessResponse.error('No Internet Connection'));
      } else if (error is HttpException) {
        setCouponListData(ApiProcessResponse.error('HTTP Error: ${error.message}'));
      } else if (error is FormatException) {
        setCouponListData(ApiProcessResponse.error('Response Format Error: ${error.message}'));
      } else {
        setCouponListData(ApiProcessResponse.error('An unexpected error occurred: $error'));
      }
      final CouponListResponseModel couponListResponseModel = await _couponRepo.fetchCouponListData(data);
      setCouponListData(ApiProcessResponse.completed(couponListResponseModel));

      if (kDebugMode) {
        print("Kuchh to gadabad h Dya");
      }
    }
  }
}
