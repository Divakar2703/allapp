import 'dart:io';

import 'package:all_app/Screens/grocery/data/models/request/login/GetUserIdRequestModel.dart';
import 'package:all_app/Screens/grocery/data/models/request/login/SendOtpRequestModel.dart';
import 'package:all_app/Screens/grocery/data/models/response/Login/GetUserIdResponseModel.dart';
import 'package:all_app/Screens/grocery/data/models/response/Login/SendOtpResponseModel.dart';
import 'package:all_app/Screens/grocery/repositories/repo_login_page.dart';
import 'package:all_app/Screens/grocery/screens/login/otp_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


import '../data/processResponse/api_process_response.dart';

class LoginViewModel with ChangeNotifier {
  final _loginRepo = LoginRepository();
  String? userId = '';
  String mobileNo = '';
  String? otp = '';
  String? userIdDigit = '';

  ApiProcessResponse<GetUserIdResponseModel> homePageData = ApiProcessResponse.loading();

  setLoginPageData(ApiProcessResponse<GetUserIdResponseModel> response) {
    homePageData = response;
    notifyListeners();
  }

  ApiProcessResponse<SendOtpResponseModel> sendOtpData = ApiProcessResponse.loading();

  setSendOtpData(ApiProcessResponse<SendOtpResponseModel> response) {
    sendOtpData = response;
    notifyListeners();
  }

  void navigateToOTP(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return OtpScreen(mobileNo: mobileNo, userId: userId,userIdDigit: userIdDigit,);
        },
      ),
    );
  }


  Future<void> fetchLoginPageData(GetUserIdRequestModel data, BuildContext context) async {
    setLoginPageData(ApiProcessResponse.loading());
    try {
      // final Map<String, dynamic> responseData = (await _homeRepo.fetchHomeData(data)) as Map<String, dynamic>;
      final GetUserIdResponseModel getUserIdResponseModel = await _loginRepo.fetchLoginData(data);

      // final HomePageResponseModel homePageResponseModel = HomePageResponseModel.fromJson(responseData as String);
      setLoginPageData(ApiProcessResponse.completed(getUserIdResponseModel));

      if (kDebugMode) {
        print("Data aa ha hai${getUserIdResponseModel.status}");
      }

      if(getUserIdResponseModel.record.userId!=null){
        userId = getUserIdResponseModel.record.userId.toString();
        userIdDigit = getUserIdResponseModel.record.id.toString();
        print("userid digit Otp LoginViewModel=============== $userIdDigit");

        final sendOtpRequestModel = SendOtpRequestModel(
          userId: userId
        );
       fetchSendOtpData(sendOtpRequestModel, context);
      }

    } catch (error) {
      if (error is SocketException) {
        setLoginPageData(ApiProcessResponse.error('No Internet Connection'));
      } else if (error is HttpException) {
        setLoginPageData(ApiProcessResponse.error('HTTP Error: ${error.message}'));
      } else if (error is FormatException) {
        setLoginPageData(ApiProcessResponse.error('Response Format Error: ${error.message}'));
      } else {
        setLoginPageData(ApiProcessResponse.error('An unexpected error occurred: $error'));
      }
      final GetUserIdResponseModel getUserIdResponseModel = await _loginRepo.fetchLoginData(data);
      setLoginPageData(ApiProcessResponse.completed(getUserIdResponseModel));

      // final Map<String, dynamic> responseData = (await _homeRepo.fetchHomeData(data)) as Map<String, dynamic>;
      // final HomePageResponseModel homePageResponseModel = HomePageResponseModel.fromJson(responseData as String);

      if (kDebugMode) {
        print("Kuchh to gadabad h Dya");
      }
    }
  }
  Future<void> fetchSendOtpData(SendOtpRequestModel data, BuildContext context) async {
    setSendOtpData(ApiProcessResponse.loading());
    try {
      // final Map<String, dynamic> responseData = (await _homeRepo.fetchHomeData(data)) as Map<String, dynamic>;
      final SendOtpResponseModel sendOtpResponseModel = await _loginRepo.fetchSendOtpData(data);

      // final HomePageResponseModel homePageResponseModel = HomePageResponseModel.fromJson(responseData as String);
      setSendOtpData(ApiProcessResponse.completed(sendOtpResponseModel));

      if (kDebugMode) {
        print("Data aa ha hai${sendOtpResponseModel.status}");
      }

      if(sendOtpResponseModel.otp!=null){
        otp = sendOtpResponseModel.otp.toString();
        navigateToOTP(context);
      }

    } catch (error) {
      if (error is SocketException) {
        setSendOtpData(ApiProcessResponse.error('No Internet Connection'));
      } else if (error is HttpException) {
        setSendOtpData(ApiProcessResponse.error('HTTP Error: ${error.message}'));
      } else if (error is FormatException) {
        setSendOtpData(ApiProcessResponse.error('Response Format Error: ${error.message}'));
      } else {
        setSendOtpData(ApiProcessResponse.error('An unexpected error occurred: $error'));
      }
      final SendOtpResponseModel sendOtpResponseModel = await _loginRepo.fetchSendOtpData(data);
      setSendOtpData(ApiProcessResponse.completed(sendOtpResponseModel));

      // final Map<String, dynamic> responseData = (await _homeRepo.fetchHomeData(data)) as Map<String, dynamic>;
      // final HomePageResponseModel homePageResponseModel = HomePageResponseModel.fromJson(responseData as String);

      if (kDebugMode) {
        print("Kuchh to gadabad h Dya");
      }
    }
  }

}