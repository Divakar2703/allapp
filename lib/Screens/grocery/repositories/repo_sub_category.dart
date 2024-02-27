

import 'package:all_app/Screens/grocery/data/models/response/subCategory/SubCatListReponseModel.dart';
import 'package:all_app/Screens/grocery/data/models/response/subCategory/SubCatProductResponseModel.dart';

import '../data/constants/app_url.dart';
import '../data/network/BaseApiServices.dart';
import '../data/network/NetworkApiServices.dart';

class SubCategoryRepository{
  BaseApiServices _apiServices = NetworkApiServices();

  Future<SubCatListResponseModel> fetchSubCategoryData(dynamic data) async{
    try{
      dynamic response = await _apiServices.getPostApiResponse(AppUrl.subCategoryListUrl, data);
      print('================fetchSubCategoryData11111111====${AppUrl.subCategoryListUrl}==============$response');
      print('==============fetchSubCategoryData2222222================${SubCatListResponseModel.fromJson(response)}');
      return response = SubCatListResponseModel.fromJson(response);
    }catch(e){
      throw e;
    }
  }

  Future<SubCatProductsResponseModel> fetchSubCategoryProductData(dynamic data) async{
    try{
      dynamic response = await _apiServices.getPostApiResponse(AppUrl.subCategoryProductsUrl, data);
      print('================fetchSubCategoryProductData11111111====${AppUrl.subCategoryProductsUrl}==============$response');
      print('==============fetchSubCategoryProductData2222222================${SubCatProductsResponseModel.fromJson(response)}');
      return response = SubCatProductsResponseModel.fromJson(response);
    }catch(e){
      throw e;
    }
  }
}