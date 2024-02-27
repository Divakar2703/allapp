

import 'package:all_app/Screens/grocery/data/models/response/Login/VerifyOtpResponseModel.dart';

import '../data/constants/app_url.dart';
import '../data/network/BaseApiServices.dart';
import '../data/network/NetworkApiServices.dart';

class OtpRepository{
  BaseApiServices _apiServices = NetworkApiServices();
  Future<VerifyOtpResponseModel?> fetchVerifyOtpData(dynamic data) async {
    try {
      dynamic response = await _apiServices.getPostApiResponse(AppUrl.verifyOtpUrl, data);
      print('================VerifyOtpResponseModel==============$response');
      print('==============VerifyOtpResponseModel================${VerifyOtpResponseModel.fromJson(response)}');
      if (response is Map<String, dynamic>) {
        return VerifyOtpResponseModel.fromJson(response);
      } else {
        print('Response is not a Map<String, dynamic>');
        return null;
      }
    } catch (e) {
      throw e;
    }
  }

}