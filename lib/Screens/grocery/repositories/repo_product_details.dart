

import 'package:all_app/Screens/grocery/data/models/response/productDetailsPage/ProductDetailsResponseModel.dart';

import '../data/constants/app_url.dart';
import '../data/network/BaseApiServices.dart';
import '../data/network/NetworkApiServices.dart';

class ProductDetailsRepository{
  BaseApiServices _apiServices = NetworkApiServices();

  Future<ProductDetailsResponseModel> fetchProductDetailsData(dynamic data) async{
    try{
      dynamic response = await _apiServices.getPostApiResponse(AppUrl.productDetailsPageUrl, data);
      print('================ProductDetailsResponseModel11==============$response');
      print('==============ProductDetailsResponseModel22================${ProductDetailsResponseModel.fromJson(response)}');
      return response = ProductDetailsResponseModel.fromJson(response);

    }catch(e){
      throw e;
    }
  }
}