import 'dart:io';
import 'package:all_app/Screens/grocery/data/models/request/profile/GetProfileDataRequestModel.dart';
import 'package:all_app/Screens/grocery/data/models/request/profile/UpdateProfileDataRequestModel.dart';
import 'package:all_app/Screens/grocery/data/models/response/profile/GetProfileDataResponse.dart';
import 'package:all_app/Screens/grocery/data/models/response/profile/UpdateProfileDataResponse.dart';
import 'package:all_app/Screens/grocery/repositories/repo_profile.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../data/processResponse/api_process_response.dart';

class ProfileViewModel with ChangeNotifier {
  final _profileRepo = ProfileRepository();

  //for get profile data
  ApiProcessResponse<GetProfileDataResponse> profileData = ApiProcessResponse.loading();
  getProfileData(ApiProcessResponse<GetProfileDataResponse> response) {
    profileData = response;
    notifyListeners();
  }

  Future<void> fetchProfileData(GetProfileDataRequestModel data, BuildContext context) async {
    getProfileData(ApiProcessResponse.loading());
    try {
      final GetProfileDataResponse getProfileDataResponse = await _profileRepo.fetchProfileData(data);
      getProfileData(ApiProcessResponse.completed(getProfileDataResponse));

      if (kDebugMode) {
        print("Data aa ha hai${getProfileDataResponse.status}");
      }

    } catch (error) {
      if (error is SocketException) {
        getProfileData(ApiProcessResponse.error('No Internet Connection'));
      } else if (error is HttpException) {
        getProfileData(ApiProcessResponse.error('HTTP Error: ${error.message}'));
      } else if (error is FormatException) {
        getProfileData(ApiProcessResponse.error('Response Format Error: ${error.message}'));
      } else {
        getProfileData(ApiProcessResponse.error('An unexpected error occurred: $error'));
      }
      final GetProfileDataResponse getProfileDataResponse = await _profileRepo.fetchProfileData(data);
      getProfileData(ApiProcessResponse.completed(getProfileDataResponse));

      if (kDebugMode) {
        print("Kuchh to gadabad h Dya");
      }
    }
  }


// for profile update
  ApiProcessResponse<UpdateProfileDataResponse> updateProfileData = ApiProcessResponse.loading();
  setProfileData(ApiProcessResponse<UpdateProfileDataResponse> response) {
    updateProfileData = response;
    notifyListeners();
  }

  Future<void> fetchUpdateProfileData(UpdateProfileDataRequestModel data, BuildContext context) async {
    setProfileData(ApiProcessResponse.loading());
    try {
      final UpdateProfileDataResponse updateProfileDataResponse = await _profileRepo.fetchUpdateProfileData(data);
      setProfileData(ApiProcessResponse.completed(updateProfileDataResponse));

      if (kDebugMode) {
        print("Data aa ha hai${updateProfileDataResponse.status}");
      }

    } catch (error) {
      if (error is SocketException) {
        setProfileData(ApiProcessResponse.error('No Internet Connection'));
      } else if (error is HttpException) {
        setProfileData(ApiProcessResponse.error('HTTP Error: ${error.message}'));
      } else if (error is FormatException) {
        setProfileData(ApiProcessResponse.error('Response Format Error: ${error.message}'));
      } else {
        setProfileData(ApiProcessResponse.error('An unexpected error occurred: $error'));
      }
      final UpdateProfileDataResponse updateProfileDataResponse = await _profileRepo.fetchUpdateProfileData(data);
      setProfileData(ApiProcessResponse.completed(updateProfileDataResponse));

      if (kDebugMode) {
        print("Kuchh to gadabad h Dya");
      }
    }
  }
}
