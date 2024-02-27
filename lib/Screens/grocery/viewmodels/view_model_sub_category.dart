import 'dart:io';

import 'package:all_app/Screens/grocery/data/models/request/subCategory/SubCatListRequestModel.dart';
import 'package:all_app/Screens/grocery/data/models/request/subCategory/SubCatProductsRequestModel.dart';
import 'package:all_app/Screens/grocery/data/models/response/subCategory/SubCatListReponseModel.dart';
import 'package:all_app/Screens/grocery/data/models/response/subCategory/SubCatProductResponseModel.dart';
import 'package:all_app/Screens/grocery/repositories/repo_sub_category.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../data/processResponse/api_process_response.dart';

class SubCategoryViewModel with ChangeNotifier {
  final _subCatRepo = SubCategoryRepository();
  String subCategoryId = '';


  //for subcategories list data
  ApiProcessResponse<SubCatListResponseModel> subCatData = ApiProcessResponse.loading();
  setSubCatData(ApiProcessResponse<SubCatListResponseModel> response) {
    subCatData = response;
    notifyListeners();
  }

  Future<void> fetchSubCatData(SubCatListRequestModel data, BuildContext context) async {
    setSubCatData(ApiProcessResponse.loading());
    try {
      final SubCatListResponseModel subCatListResponseModel = await _subCatRepo.fetchSubCategoryData(data);
      setSubCatData(ApiProcessResponse.completed(subCatListResponseModel));

      subCategoryId = subCatListResponseModel.subcategory[0].id.toString();
      if (kDebugMode) {
        print("Data aa ha hai${subCatListResponseModel.status}");
      }
    } catch (error) {
      if (error is SocketException) {
        setSubCatData(ApiProcessResponse.error('No Internet Connection'));
      } else if (error is HttpException) {
        setSubCatData(ApiProcessResponse.error('HTTP Error: ${error.message}'));
      } else if (error is FormatException) {
        setSubCatData(ApiProcessResponse.error('Response Format Error: ${error.message}'));
      } else {
        setSubCatData(ApiProcessResponse.error('An unexpected error occurred: $error'));
      }
      final SubCatListResponseModel subCatListResponseModel = await _subCatRepo.fetchSubCategoryData(data);
      setSubCatData(ApiProcessResponse.completed(subCatListResponseModel));


      if (kDebugMode) {
        print("Kuchh to gadabad h Dya");
      }
    }
  }


  // for subcategories products data
  ApiProcessResponse<SubCatProductsResponseModel> subCatProductsData = ApiProcessResponse.loading();
  setSubCatProductsData(ApiProcessResponse<SubCatProductsResponseModel> response) {
    subCatProductsData = response;
    notifyListeners();
  }

  Future<void> fetchSubCatProductsData(SubCatProductsRequestModel data, BuildContext context) async {
    setSubCatProductsData(ApiProcessResponse.loading());
    try {
      final SubCatProductsResponseModel subCatProductsResponseModel = await _subCatRepo.fetchSubCategoryProductData(data);
      setSubCatProductsData(ApiProcessResponse.completed(subCatProductsResponseModel));

      if (kDebugMode) {
        print("Data aa ha hai${subCatProductsResponseModel.status}");
      }
    } catch (error) {
      if (error is SocketException) {
        setSubCatProductsData(ApiProcessResponse.error('No Internet Connection'));
      } else if (error is HttpException) {
        setSubCatProductsData(ApiProcessResponse.error('HTTP Error: ${error.message}'));
      } else if (error is FormatException) {
        setSubCatProductsData(ApiProcessResponse.error('Response Format Error: ${error.message}'));
      } else {
        setSubCatProductsData(ApiProcessResponse.error('An unexpected error occurred: $error'));
      }
      final SubCatProductsResponseModel subCatProductsResponseModel = await _subCatRepo.fetchSubCategoryProductData(data);
      setSubCatProductsData(ApiProcessResponse.completed(subCatProductsResponseModel));

      if (kDebugMode) {
        print("Kuchh to gadabad h Dya");
      }
    }
  }
}
