import 'dart:io';

import 'package:all_app/Screens/grocery/data/models/request/wishlistPage/WishListRequestModel.dart';
import 'package:all_app/Screens/grocery/data/models/response/wishListPage/WishListResponseModel.dart';
import 'package:all_app/Screens/grocery/repositories/repo_wish_list_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


import '../data/processResponse/api_process_response.dart';

class WishListPageViewModel with ChangeNotifier {
  final _wishListRepo = WishListPageRepository();

  ApiProcessResponse<WishListResponseModel> wishListData = ApiProcessResponse
      .loading();

  setWishListData(ApiProcessResponse<WishListResponseModel> response) {
    wishListData = response;
    notifyListeners();
  }

  Future<void> fetchWishListData(WishListRequestModel data,
      BuildContext context) async {
    setWishListData(ApiProcessResponse.loading());
    try {
      // final Map<String, dynamic> responseData = (await _homeRepo.fetchHomeData(data)) as Map<String, dynamic>;
      final WishListResponseModel wishListResponseModel = await _wishListRepo
          .fetchSubCategoryData(data);

      // final HomePageResponseModel homePageResponseModel = HomePageResponseModel.fromJson(responseData as String);
      setWishListData(ApiProcessResponse.completed(wishListResponseModel));

      if (kDebugMode) {
        print("Data aa ha hai${wishListResponseModel.status}");
      }
    } catch (error) {
      if (error is SocketException) {
        setWishListData(ApiProcessResponse.error('No Internet Connection'));
      } else if (error is HttpException) {
        setWishListData(
            ApiProcessResponse.error('HTTP Error: ${error.message}'));
      } else if (error is FormatException) {
        setWishListData(ApiProcessResponse.error(
            'Response Format Error: ${error.message}'));
      } else {
        setWishListData(
            ApiProcessResponse.error('An unexpected error occurred: $error'));
      }
      final WishListResponseModel wishListResponseModel = await _wishListRepo
          .fetchSubCategoryData(data);
      setWishListData(ApiProcessResponse.completed(wishListResponseModel));

      // final Map<String, dynamic> responseData = (await _homeRepo.fetchHomeData(data)) as Map<String, dynamic>;
      // final HomePageResponseModel homePageResponseModel = HomePageResponseModel.fromJson(responseData as String);

      if (kDebugMode) {
        print("Kuchh to gadabad h Dya");
      }
    }
  }
}