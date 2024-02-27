
import 'dart:io';

import 'package:all_app/Screens/grocery/data/models/request/HomePage/home_page_dynamic_request_model.dart';
import 'package:all_app/Screens/grocery/data/processResponse/api_process_response.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../data/models/response/HomePage/home_page_dynamic_response_model.dart';
import '../data/models/response/HomePage/home_page_response_model.dart';
import '../repositories/repo_home_page.dart';


class HomePageViewModel with ChangeNotifier {
  final _homeRepo = HomeRepository();

  ApiProcessResponse<HomePageDynamicDataResponse> homePageData = ApiProcessResponse.loading();

  setHomePageData(ApiProcessResponse<HomePageDynamicDataResponse> response) {
    homePageData = response;
    notifyListeners();
  }

  Future<void> fetchHomePageData(HomePageDynamicDataRequest data, BuildContext context) async {
    setHomePageData(ApiProcessResponse.loading());
    try {
      // final Map<String, dynamic> responseData = (await _homeRepo.fetchHomeData(data)) as Map<String, dynamic>;
      final HomePageDynamicDataResponse homePageResponseModel = await _homeRepo.fetchHomeData(data);

      // final HomePageResponseModel homePageResponseModel = HomePageResponseModel.fromJson(responseData as String);
      setHomePageData(ApiProcessResponse.completed(homePageResponseModel));

      if (kDebugMode) {
        print("Data aa ha hai${homePageResponseModel.status}");
      }
    } catch (error) {
      if (error is SocketException) {
        setHomePageData(ApiProcessResponse.error('No Internet Connection'));
      } else if (error is HttpException) {
        setHomePageData(ApiProcessResponse.error('HTTP Error: ${error.message}'));
      } else if (error is FormatException) {
        setHomePageData(ApiProcessResponse.error('Response Format Error: ${error.message}'));
      } else {
        setHomePageData(ApiProcessResponse.error('An unexpected error occurred: $error'));
      }
      final HomePageDynamicDataResponse homePageResponseModel = await _homeRepo.fetchHomeData(data);
      setHomePageData(ApiProcessResponse.completed(homePageResponseModel));

      // final Map<String, dynamic> responseData = (await _homeRepo.fetchHomeData(data)) as Map<String, dynamic>;
      // final HomePageResponseModel homePageResponseModel = HomePageResponseModel.fromJson(responseData as String);

      if (kDebugMode) {
        print("Kuchh to gadabad h Dya");
      }
    }
  }
}
