import 'dart:io';

import 'package:all_app/Screens/grocery/data/models/request/cartPage/CartPageRequestModel.dart';
import 'package:all_app/Screens/grocery/data/models/response/cartPage/CartPageResponseModel.dart';
import 'package:all_app/Screens/grocery/repositories/repo_cart_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../data/processResponse/api_process_response.dart';

class CartPageViewModel with ChangeNotifier {
  final _cartRepo = CartPageRepository();

  ApiProcessResponse<CartPageResponseModel> cartPageData = ApiProcessResponse
      .loading();
  setCartPageData(ApiProcessResponse<CartPageResponseModel> response) {
    cartPageData = response;
    notifyListeners();
  }

  Future<void> fetchCartPageData(CartPageRequestModel data,
      BuildContext context) async {
    setCartPageData(ApiProcessResponse.loading());
    try {
      // final Map<String, dynamic> responseData = (await _homeRepo.fetchHomeData(data)) as Map<String, dynamic>;
      final CartPageResponseModel cartPageResponseModel = await _cartRepo
          .fetchCartPageData(data);

      // final HomePageResponseModel homePageResponseModel = HomePageResponseModel.fromJson(responseData as String);
      setCartPageData(ApiProcessResponse.completed(cartPageResponseModel));

      if (kDebugMode) {
        print("Data aa ha hai${cartPageResponseModel.status}");
      }
    } catch (error) {
      if (error is SocketException) {
        setCartPageData(ApiProcessResponse.error('No Internet Connection'));
      } else if (error is HttpException) {
        setCartPageData(
            ApiProcessResponse.error('HTTP Error: ${error.message}'));
      } else if (error is FormatException) {
        setCartPageData(ApiProcessResponse.error(
            'Response Format Error: ${error.message}'));
      } else {
        setCartPageData(
            ApiProcessResponse.error('An unexpected error occurred: $error'));
      }
      final CartPageResponseModel cartPageResponseModel = await _cartRepo
          .fetchCartPageData(data);
      setCartPageData(ApiProcessResponse.completed(cartPageResponseModel));

      // final Map<String, dynamic> responseData = (await _homeRepo.fetchHomeData(data)) as Map<String, dynamic>;
      // final HomePageResponseModel homePageResponseModel = HomePageResponseModel.fromJson(responseData as String);

      if (kDebugMode) {
        print("Kuchh to gadabad h Dya");
      }
    }
  }
}