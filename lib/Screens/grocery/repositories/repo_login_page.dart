
import 'package:all_app/Screens/grocery/data/models/response/Login/GetUserIdResponseModel.dart';
import 'package:all_app/Screens/grocery/data/models/response/Login/SendOtpResponseModel.dart';

import '../data/constants/app_url.dart';
import '../data/network/BaseApiServices.dart';
import '../data/network/NetworkApiServices.dart';

class LoginRepository{
  BaseApiServices _apiServices = NetworkApiServices();
  Future<GetUserIdResponseModel> fetchLoginData(dynamic data) async{
    try{
      dynamic response = await _apiServices.getPostApiResponse(AppUrl.loginUrl, data);
      print('================ProductDetailsResponseModel11==============$response');
      print('==============ProductDetailsResponseModel22================${GetUserIdResponseModel.fromJson(response)}');
      return response = GetUserIdResponseModel.fromJson(response);
    }catch(e){
      throw e;
    }
  }

  Future<SendOtpResponseModel> fetchSendOtpData(dynamic data) async{
    try{
      dynamic response = await _apiServices.getPostApiResponse(AppUrl.sendOtpUrl, data);
      print('================ProductDetailsResponseModel11==============$response');
      print('==============ProductDetailsResponseModel22================${SendOtpResponseModel.fromJson(response)}');
      return response = SendOtpResponseModel.fromJson(response);
    }catch(e){
      throw e;
    }
  }
}