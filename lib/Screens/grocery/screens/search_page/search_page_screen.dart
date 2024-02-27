import 'package:all_app/Screens/grocery/data/constants/app_constants_value.dart';
import 'package:all_app/Screens/grocery/data/models/request/search/SearchProductRequestModel.dart';
import 'package:all_app/Screens/grocery/screens/home/components/home_end_screen.dart';
import 'package:all_app/Screens/grocery/screens/search_page/component/search_item_card.dart';
import 'package:all_app/Screens/grocery/viewmodels/view_model_search_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../data/processResponse/status.dart';
import 'component/search_page_search_field.dart';

class SearchPageScreen extends StatefulWidget {
  const SearchPageScreen({Key? key}) : super(key: key);

  @override
  State<SearchPageScreen> createState() => _SearchPageScreenState();
}

class _SearchPageScreenState extends State<SearchPageScreen> {
  SearchViewModel searchViewModel = SearchViewModel();
  var userId = '';

  @override
  void initState() {
    final data = SearchProductRequestModel(
      productName: 'Soup',
      userId: '1', // Assuming userId is nullable
      pageno: '1',
    );
    searchViewModel.fetchSearchPageData(data, context);
    super.initState();
  }

  void getUser() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    userId = sp.getString(Constants.userId)!;
  }

  Future<void> getProductsList(String searchText) async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    var userId = sp.getString(Constants.userId);
    final data = SearchProductRequestModel(
      productName: searchText,
      userId: userId ?? '', // Assuming userId is nullable
      pageno: '1',
    );
    final searchProductsResponse = await searchViewModel.fetchSearchPageData(
      data,
      context,
    );
  }

  @override
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ChangeNotifierProvider<SearchViewModel>(
          create: (BuildContext context) => searchViewModel,
          child: Consumer<SearchViewModel>(
            builder: (context, value, _) {
              return Column(
                children: [
                  Material(
                    elevation: 4,
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(1),
                      bottomLeft: Radius.circular(1),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(1),
                          bottomLeft: Radius.circular(1),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 16),
                          SearchPageSearchField(
                            onTextChanged: (text) {
                              getProductsList(text);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: value.searchedData.status == Status.LOADING
                        ? Center(child: CircularProgressIndicator())
                        : value.searchedData.status == Status.ERROR
                        ? HomeEndScreen()
                        : GridView.builder(
                      gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 3.0,
                        crossAxisSpacing: 0.0,
                      ),
                      itemCount: value.searchedData.data!.searchProduct!.length,
                      itemBuilder: (context, index) {
                        var product = value.searchedData.data!.searchProduct![index];
                        return GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(4),
                            child: SearchItemCard(
                              product: product,
                              heroSuffix: "search_page",
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
