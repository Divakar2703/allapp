import 'package:all_app/Screens/grocery/data/models/response/cartPage/CartPageResponseModel.dart';

import '../data/constants/app_url.dart';
import '../data/network/BaseApiServices.dart';
import '../data/network/NetworkApiServices.dart';

class CartPageRepository{
  BaseApiServices _apiServices = NetworkApiServices();
  Future<CartPageResponseModel> fetchCartPageData(dynamic data) async{
    try{
      dynamic response = await _apiServices.getPostApiResponse(AppUrl.cartPageUrl, data);
      print('================11111111====${AppUrl.cartPageUrl}==============$response');
      print('==============2222222================${CartPageResponseModel.fromJson(response)}');
      return response = CartPageResponseModel.fromJson(response);
    }catch(e){
      throw e;
    }
  }
}