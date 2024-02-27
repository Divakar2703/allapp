import 'dart:io';

import 'package:all_app/Screens/grocery/data/constants/app_constants_value.dart';
import 'package:all_app/Screens/grocery/data/models/request/login/VerifyOtpRequestModel.dart';
import 'package:all_app/Screens/grocery/data/models/response/Login/VerifyOtpResponseModel.dart';
import 'package:all_app/Screens/grocery/init_screen.dart';
import 'package:all_app/Screens/grocery/repositories/repo_otp_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../data/processResponse/api_process_response.dart';

class OtpViewModel with ChangeNotifier {
  final _otpRepo = OtpRepository();
  String? userId = '';
  String? userName = '';
  String? mobile = '';
  String? userIdDigit = '';

  ApiProcessResponse<VerifyOtpResponseModel> verifyOtpPageData = ApiProcessResponse.loading();
  setVerifyOtpPageData(ApiProcessResponse<VerifyOtpResponseModel> response) {
    verifyOtpPageData = response;
    notifyListeners();
  }

  void navigateToHome(BuildContext context) async{
    final SharedPreferences sp =  await SharedPreferences.getInstance();
    sp.setString(Constants.userId, userId!);
    sp.setString(Constants.name, userName!);
    sp.setString(Constants.mobile, mobile!);
    sp.setString(Constants.userIdDigit, userIdDigit!);
    sp.setBool(Constants.isLogin, true);
    print("userid digit Otp OtpViewModel=============== $userIdDigit");
    Constants.userIdForUse = userIdDigit!;
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return InitScreen();
        },
      ),
    );
  }

  Future<void> fetchVerifyOtpPageData(VerifyOtpRequestModel data, BuildContext context) async {
    setVerifyOtpPageData(ApiProcessResponse.loading());
    try {
      final VerifyOtpResponseModel? verifyOtpResponseModel = await _otpRepo.fetchVerifyOtpData(data);

      setVerifyOtpPageData(ApiProcessResponse.completed(verifyOtpResponseModel));

      if (kDebugMode) {
        print("Data aa ha hai${verifyOtpResponseModel?.status}");
      }

      if(verifyOtpResponseModel?.status != "error"){
        userId = verifyOtpResponseModel?.userId.toString();
        userName = verifyOtpResponseModel?.name.toString();
        mobile = verifyOtpResponseModel?.toString();
        navigateToHome(context);
      }else{

      }

    } catch (error) {
      if (error is SocketException) {
        setVerifyOtpPageData(ApiProcessResponse.error('No Internet Connection'));
      } else if (error is HttpException) {
        setVerifyOtpPageData(ApiProcessResponse.error('HTTP Error: ${error.message}'));
      } else if (error is FormatException) {
        setVerifyOtpPageData(ApiProcessResponse.error('Response Format Error: ${error.message}'));
      } else {
        setVerifyOtpPageData(ApiProcessResponse.error('An unexpected error occurred: $error'));
      }
      if (kDebugMode) {
        print("Kuchh to gadabad h Dya");
      }
      final VerifyOtpResponseModel? verifyOtpResponseModel = await _otpRepo.fetchVerifyOtpData(data);
      setVerifyOtpPageData(ApiProcessResponse.completed(verifyOtpResponseModel));


    }
  }

}