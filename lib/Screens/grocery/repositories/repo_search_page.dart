
import 'package:all_app/Screens/grocery/data/models/response/search/SearchProductResponseModel.dart';

import '../data/constants/app_url.dart';
import '../data/network/BaseApiServices.dart';
import '../data/network/NetworkApiServices.dart';

class SearchRepository{
  BaseApiServices _apiServices = NetworkApiServices();
  Future<SearchProductResponseModel> fetchSearchedData(dynamic data) async{
    try{
      dynamic response = await _apiServices.getPostApiResponse(AppUrl.searchProductUrl, data);
      print('================SearchProductResponseModel111111==============$response');
      print('==============SearchProductResponseModel222222================${SearchProductResponseModel.fromJson(response)}');
      return response = SearchProductResponseModel.fromJson(response);
    }catch(e){
      throw e;
    }
  }
}