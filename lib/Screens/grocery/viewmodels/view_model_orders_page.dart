import 'dart:io';
import 'package:all_app/Screens/grocery/data/models/request/orders/GetOrdersListRequestModel.dart';
import 'package:all_app/Screens/grocery/data/models/response/orders/GetOrdersListResponseModel.dart';
import 'package:all_app/Screens/grocery/repositories/repo_orders.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../data/processResponse/api_process_response.dart';

class OrdersViewModel with ChangeNotifier {
  final _ordersRepo = OrdersRepository();

  //for get profile data
  ApiProcessResponse<GetOrdersListResponseModel> ordersData = ApiProcessResponse.loading();
  setOrdersData(ApiProcessResponse<GetOrdersListResponseModel> response) {
    ordersData = response;
    notifyListeners();
  }

  Future<void> fetchProfileData(GetOrdersListRequestModel data, BuildContext context) async {
    setOrdersData(ApiProcessResponse.loading());
    try {
      final GetOrdersListResponseModel getOrdersListResponseModel = await _ordersRepo.fetchOrdersData(data);
      setOrdersData(ApiProcessResponse.completed(getOrdersListResponseModel));

      if (kDebugMode) {
        print("Data aa ha hai${getOrdersListResponseModel.status}");
      }

    } catch (error) {
      if (error is SocketException) {
        setOrdersData(ApiProcessResponse.error('No Internet Connection'));
      } else if (error is HttpException) {
        setOrdersData(ApiProcessResponse.error('HTTP Error: ${error.message}'));
      } else if (error is FormatException) {
        setOrdersData(ApiProcessResponse.error('Response Format Error: ${error.message}'));
      } else {
        setOrdersData(ApiProcessResponse.error('An unexpected error occurred: $error'));
      }
      final GetOrdersListResponseModel getOrdersListResponseModel = await _ordersRepo.fetchOrdersData(data);
      setOrdersData(ApiProcessResponse.completed(getOrdersListResponseModel));

      if (kDebugMode) {
        print("Kuchh to gadabad h Dya");
      }
    }
  }


}
