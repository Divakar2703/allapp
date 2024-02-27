
import '../data/constants/app_url.dart';
import '../data/models/response/HomePage/home_page_dynamic_response_model.dart';
import '../data/models/response/HomePage/home_page_response_model.dart';
import '../data/network/BaseApiServices.dart';
import '../data/network/NetworkApiServices.dart';

class HomeRepository{
  BaseApiServices _apiServices = NetworkApiServices();

  Future<HomePageDynamicDataResponse> fetchHomeData(dynamic data) async{
    try{
      dynamic response = await _apiServices.getPostApiResponse(AppUrl.homePageDynamicUrl, data);
      print('================11111111==============$response');
      print('==============2222222================${HomePageDynamicDataResponse.fromJson(response)}');
      return response = HomePageDynamicDataResponse.fromJson(response);

    }catch(e){
      throw e;
    }
  }
}