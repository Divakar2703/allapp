
import 'package:all_app/Screens/grocery/data/models/response/orders/GetOrdersListResponseModel.dart';

import '../data/constants/app_url.dart';
import '../data/network/BaseApiServices.dart';
import '../data/network/NetworkApiServices.dart';

class OrdersRepository{
  BaseApiServices _apiServices = NetworkApiServices();

  Future<GetOrdersListResponseModel> fetchOrdersData(dynamic data) async{
    try{
      dynamic response = await _apiServices.getPostApiResponse(AppUrl.orderListUrl, data);
      print('================GetOrdersListResponseModel==============$response');
      print('==============GetOrdersListResponseModel================${GetOrdersListResponseModel.fromJson(response)}');
      return response = GetOrdersListResponseModel.fromJson(response);

    }catch(e){
      throw e;
    }
  }
}