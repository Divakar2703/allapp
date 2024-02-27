
import 'package:all_app/Screens/grocery/data/models/response/wishListPage/WishListResponseModel.dart';

import '../data/constants/app_url.dart';
import '../data/network/BaseApiServices.dart';
import '../data/network/NetworkApiServices.dart';

class WishListPageRepository{
  BaseApiServices _apiServices = NetworkApiServices();

  Future<WishListResponseModel> fetchSubCategoryData(dynamic data) async{
    try{
      dynamic response = await _apiServices.getPostApiResponse(AppUrl.wishListUrl, data);
      print('================11111111====${AppUrl.subCategoryUrl}==============$response');
      print('==============2222222================${WishListResponseModel.fromJson(response)}');
      return response = WishListResponseModel.fromJson(response);
    }catch(e){
      throw e;
    }
  }
}