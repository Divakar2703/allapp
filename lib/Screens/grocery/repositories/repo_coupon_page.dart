import 'package:all_app/Screens/grocery/data/models/response/coupon/CouponListResponseModel.dart';

import '../data/constants/app_url.dart';
import '../data/network/BaseApiServices.dart';
import '../data/network/NetworkApiServices.dart';

class CouponRepository{
  BaseApiServices _apiServices = NetworkApiServices();
  Future<CouponListResponseModel> fetchCouponListData(dynamic data) async {
    try {
      dynamic response = await _apiServices.getPostApiResponse(AppUrl.couponListUrl,data);
      print('Coupon API Response: $response'); // Log the response
      if (response is Map<String, dynamic>) {
        return CouponListResponseModel.fromJson(response);
      } else {
        throw FormatException('Invalid response format');
      }
    } catch (e) {
      print('Coupon API Error: $e'); // Log the error
      throw e; // Rethrow the error for handling in the view model
    }
  }




// Future<CouponListResponseModel> fetchCouponListData() async{
  //   try{
  //     dynamic response = await _apiServices.getGetApiResponse('https://grossry.56testing.club/coupon-code');
  //     print('================CouponListResponseModel==============$response');
  //     print('==============CouponListResponseModel================${CouponListResponseModel.fromJson(response)}');
  //     return response = CouponListResponseModel.fromJson(response);
  //   }catch(e){
  //     throw e;
  //   }
  // }
}