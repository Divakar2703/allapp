

import 'package:all_app/Screens/grocery/data/models/response/profile/GetProfileDataResponse.dart';
import 'package:all_app/Screens/grocery/data/models/response/profile/UpdateProfileDataResponse.dart';

import '../data/constants/app_url.dart';
import '../data/network/BaseApiServices.dart';
import '../data/network/NetworkApiServices.dart';

class ProfileRepository{
  BaseApiServices _apiServices = NetworkApiServices();

  Future<GetProfileDataResponse> fetchProfileData(dynamic data) async{
    try{
      dynamic response = await _apiServices.getPostApiResponse(AppUrl.getProfileUrl, data);
      print('================GetProfileDataResponse==============$response');
      print('==============GetProfileDataResponse================${GetProfileDataResponse.fromJson(response)}');
      return response = GetProfileDataResponse.fromJson(response);

    }catch(e){
      throw e;
    }
  }


  Future<UpdateProfileDataResponse> fetchUpdateProfileData(dynamic data) async{
    try{
      dynamic response = await _apiServices.getPostApiResponse(AppUrl.updateProfileUrl, data);
      print('================UpdateProfileDataResponse==============$response');
      print('==============UpdateProfileDataResponse================${UpdateProfileDataResponse.fromJson(response)}');
      return response = UpdateProfileDataResponse.fromJson(response);

    }catch(e){
      throw e;
    }
  }
}