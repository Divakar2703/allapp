import 'dart:io';
import 'package:all_app/Screens/grocery/data/models/request/search/SearchProductRequestModel.dart';
import 'package:all_app/Screens/grocery/data/models/response/search/SearchProductResponseModel.dart';
import 'package:all_app/Screens/grocery/repositories/repo_search_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../data/processResponse/api_process_response.dart';

class SearchViewModel with ChangeNotifier {
  final _searchRepo = SearchRepository();

  ApiProcessResponse<SearchProductResponseModel> searchedData = ApiProcessResponse.loading();
  setSearchPageData(ApiProcessResponse<SearchProductResponseModel> response) {
    searchedData = response;
    notifyListeners();
  }

  Future<void> fetchSearchPageData(SearchProductRequestModel data, BuildContext context) async {
    setSearchPageData(ApiProcessResponse.loading());
    try {
      final SearchProductResponseModel searchProductResponseModel = await _searchRepo.fetchSearchedData(data);
      setSearchPageData(ApiProcessResponse.completed(searchProductResponseModel));

      if (kDebugMode) {
        print("Data aa ha hai${searchProductResponseModel.status}");
      }

    } catch (error) {
      if (error is SocketException) {
        setSearchPageData(ApiProcessResponse.error('No Internet Connection'));
      } else if (error is HttpException) {
        setSearchPageData(ApiProcessResponse.error('HTTP Error: ${error.message}'));
      } else if (error is FormatException) {
        setSearchPageData(ApiProcessResponse.error('Response Format Error: ${error.message}'));
      } else {
        setSearchPageData(ApiProcessResponse.error('An unexpected error occurred: $error'));
      }
      final SearchProductResponseModel searchProductResponseModel = await _searchRepo.fetchSearchedData(data);
      setSearchPageData(ApiProcessResponse.completed(searchProductResponseModel));

      if (kDebugMode) {
        print("Kuchh to gadabad h Dya");
      }
    }
  }
}
