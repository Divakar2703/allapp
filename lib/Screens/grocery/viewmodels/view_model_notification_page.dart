import 'dart:io';
import 'package:all_app/Screens/grocery/data/models/request/coupon/NotificationRequestModel.dart';
import 'package:all_app/Screens/grocery/data/models/response/notification/NotificationResponseModel.dart';
import 'package:all_app/Screens/grocery/repositories/repo_notification_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../data/processResponse/api_process_response.dart';

class NotificationViewModel with ChangeNotifier {
  final _notificationRepo = NotificationRepository();

  ApiProcessResponse<NotificationResponseModel> searchedData = ApiProcessResponse.loading();
  setNotificationListData(ApiProcessResponse<NotificationResponseModel> response) {
    searchedData = response;
    notifyListeners();
  }

  Future<void> fetchNotificationListData(NotificationRequestModel data, BuildContext context) async {
    setNotificationListData(ApiProcessResponse.loading());
    try {
      final NotificationResponseModel notificationResponseModel = await _notificationRepo.fetchNotificationListData(data);
      setNotificationListData(ApiProcessResponse.completed(notificationResponseModel));

      if (kDebugMode) {
        print("Data aa ha hai${notificationResponseModel.status}");
      }

    } catch (error) {
      if (error is SocketException) {
        setNotificationListData(ApiProcessResponse.error('No Internet Connection'));
      } else if (error is HttpException) {
        setNotificationListData(ApiProcessResponse.error('HTTP Error: ${error.message}'));
      } else if (error is FormatException) {
        setNotificationListData(ApiProcessResponse.error('Response Format Error: ${error.message}'));
      } else {
        setNotificationListData(ApiProcessResponse.error('An unexpected error occurred: $error'));
      }
      final NotificationResponseModel notificationResponseModel = await _notificationRepo.fetchNotificationListData(data);
      setNotificationListData(ApiProcessResponse.completed(notificationResponseModel));

      if (kDebugMode) {
        print("Kuchh to gadabad h Dya");
      }
    }
  }
}
