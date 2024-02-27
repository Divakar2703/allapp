import 'dart:io';
import 'package:all_app/Screens/grocery/data/models/request/productDetailsPage/ProductDetailsRequestModel.dart';
import 'package:all_app/Screens/grocery/data/models/response/productDetailsPage/ProductDetailsResponseModel.dart';
import 'package:all_app/Screens/grocery/repositories/repo_product_details.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../data/processResponse/api_process_response.dart';

class ProductDetailsViewModel with ChangeNotifier {
  final _productDetailsRepo = ProductDetailsRepository();
  String productName = "";
  String productImage = "";
  double amount = 0;

  ApiProcessResponse<ProductDetailsResponseModel> productDetailsData =
  ApiProcessResponse.loading();

  setProductDetailsPageData(
      ApiProcessResponse<ProductDetailsResponseModel> response) {
    productDetailsData = response;
    notifyListeners();
  }

  Future<void> fetchProductDetailsPageData(
      ProductDetailsRequestModel data, BuildContext context) async {
    setProductDetailsPageData(ApiProcessResponse.loading());
    try {
      final ProductDetailsResponseModel productDetailsResponseModel =
      await _productDetailsRepo.fetchProductDetailsData(data);
      setProductDetailsPageData(
          ApiProcessResponse.completed(productDetailsResponseModel));
      productName = productDetailsResponseModel.productName.toString();
      // Check if multiimg and multiweight lists have items
      if (productDetailsResponseModel.multiimg != null &&
          productDetailsResponseModel.multiimg!.isNotEmpty) {
        productImage = productDetailsResponseModel.multiimg![0].image.toString();
      }
      if (productDetailsResponseModel.multiweight != null &&
          productDetailsResponseModel.multiweight!.isNotEmpty) {
        amount =
            productDetailsResponseModel.multiweight![0].discountedPrice ?? 0;
      }

      if (kDebugMode) {
        print("Data aa ha hai${productDetailsResponseModel.multiimg}");
      }
    } catch (error) {
      if (error is SocketException) {
        setProductDetailsPageData(ApiProcessResponse.error('No Internet Connection'));
      } else if (error is HttpException) {
        setProductDetailsPageData(ApiProcessResponse.error('HTTP Error: ${error.message}'));
      } else if (error is FormatException) {
        setProductDetailsPageData(ApiProcessResponse.error('Response Format Error: ${error.message}'));
      } else {
        setProductDetailsPageData(ApiProcessResponse.error('An unexpected error occurred: $error'));
      }
      final ProductDetailsResponseModel productDetailsResponseModel =
      await _productDetailsRepo.fetchProductDetailsData(data);
      setProductDetailsPageData(
          ApiProcessResponse.completed(productDetailsResponseModel));
      productName = productDetailsResponseModel.productName.toString();
      if (productDetailsResponseModel.multiimg != null &&
          productDetailsResponseModel.multiimg!.isNotEmpty) {
        productImage = productDetailsResponseModel.multiimg![0].image.toString();
      }
      if (productDetailsResponseModel.multiweight != null &&
          productDetailsResponseModel.multiweight!.isNotEmpty) {
        amount =
            productDetailsResponseModel.multiweight![0].discountedPrice ?? 0;
      }

      if (kDebugMode) {
        print("Kuchh to gadabad h Dya=============$error");
      }
    }
  }
}
