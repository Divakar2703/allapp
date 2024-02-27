
import 'package:all_app/Screens/grocery/data/models/response/notification/NotificationResponseModel.dart';

import '../data/constants/app_url.dart';
import '../data/network/BaseApiServices.dart';
import '../data/network/NetworkApiServices.dart';

class NotificationRepository{
  BaseApiServices _apiServices = NetworkApiServices();
  Future<NotificationResponseModel> fetchNotificationListData(dynamic data) async{
    try{
      dynamic response = await _apiServices.getPostApiResponse(AppUrl.couponListUrl,data);
      print('================NotificationResponseModel==============$response');
      print('==============NotificationResponseModel================${NotificationResponseModel.fromJson(response)}');
      return response = NotificationResponseModel.fromJson(response);
    }catch(e){
      throw e;
    }
  }
}