import 'package:all_app/Screens/grocery/data/constants/app_constants_value.dart';
import 'package:all_app/Screens/grocery/data/models/request/HomePage/home_page_dynamic_request_model.dart';
import 'package:all_app/Screens/grocery/data/models/response/HomePage/home_page_category_response_model.dart';
import 'package:all_app/Screens/grocery/data/models/response/HomePage/home_page_dynamic_response_model.dart';
import 'package:all_app/Screens/grocery/data/processResponse/status.dart';
import 'package:all_app/Screens/grocery/screens/home/components/banner.dart';
import 'package:all_app/Screens/grocery/screens/home/small_widgets/categories_list.dart';
import 'package:all_app/Screens/grocery/screens/home/small_widgets/home_shimmer.dart';
import 'package:all_app/Screens/grocery/screens/home/small_widgets/horizontal_latest_products.dart';
import 'package:all_app/Screens/grocery/screens/home/small_widgets/location_widgets.dart';
import 'package:all_app/Screens/grocery/screens/home/small_widgets/subtitle.dart';
import 'package:all_app/Screens/grocery/screens/home/small_widgets/video_product.dart';
import 'package:all_app/Screens/grocery/viewmodels/view_model_home_page.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import 'package:location/location.dart' as loc;
import '../../styles/colors.dart';
import 'components/home_end_screen.dart';
import 'components/search_field.dart';
import 'small_widgets/padded.dart';
class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomePageViewModel homePageViewModel = HomePageViewModel();
  loc.LocationData? locationData;
  List<Placemark>? placemark;
  String address = '';
  String locality = '';
  String state = '';

  @override
  void initState() {
    super.initState();

    getPermission();
    final data = HomePageDynamicDataRequest(
      domain: "56testing.club",
      userId: Constants.userIdForUse
    );
    homePageViewModel.fetchHomePageData(data, context);
  }

  void getPermission() async {
    print('enter permission');
    if (await Permission.location.isGranted) {
      print('enter permission iff===============');

      getLocation();
    } else {
      //api ka kaam krna hai
      print('enter permission else============');

      Permission.location.request();
    }
  }

  void getLocation() async {
    print('enter getLocation=============');

    final locationData = await loc.Location.instance.getLocation();
    if (locationData != null) {
      setState(() {
        this.locationData = locationData;
      });
      print(
          'Lattitude====================================${locationData.latitude}   Longitude=====================${locationData.longitude} ');
      getAddress();
    }
  }

  void getAddress() async {
    print('enter getAddresss====================');

    if (locationData != null) {
      placemark = await placemarkFromCoordinates(
          locationData!.latitude!, locationData!.longitude!);
      locality = placemark![0].locality!;
      state = placemark![0].administrativeArea!;
      setState(() {});
      print(
          'administrativeArea====${placemark![0].administrativeArea}  subAdministrativeArea======== ${placemark![0].locality} ');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ChangeNotifierProvider<HomePageViewModel>(
          create: (BuildContext context) => homePageViewModel,
          child: Consumer<HomePageViewModel>(
            builder: (context, value, _) {
              final status = value.homePageData?.status ?? "";
              if (status == Status.LOADING) {
                return buildHomeShimmer(); // Show shimmer effect while loading
              } else if (status == Status.ERROR) {
                return Expanded(
                  child: Column(
                    children: [
                      Material(
                        elevation: 4,
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(16),
                          bottomLeft: Radius.circular(16),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: const BorderRadius.only(
                              bottomRight: Radius.circular(16),
                              bottomLeft: Radius.circular(16),
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
                              LocationWidget(locality: locality, state: state,),
                              const SizedBox(height: 16),
                              const SearchField(),
                            ],
                          ),
                        ),
                      ),
                      Expanded(child: SingleChildScrollView(child: const HomeEndScreen())),
                    ],
                  ),
                );
              } else {
                // If status is not loading or error, assume it's completed
                if (locationData == null) {
                  // Show shimmer effect while fetching location
                  return buildHomeShimmer();
                } else {
                  // Show the home screen content
                  return buildHomePageContent(value);
                }
              }
            },
          ),
        ),
      ),
    );
  }

  Widget buildHomePageContent(HomePageViewModel value) {
    return Column(
      children: [
        Material(
          elevation: 4,
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
          ),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(16),
                bottomLeft: Radius.circular(16),
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
                LocationWidget(locality: locality, state: state,),
                const SizedBox(height: 16),
                const SearchField(),
              ],
            ),
          ),
        ),

        Expanded(
          child: ListView(
            children: [
              SizedBox(height: 10),
              if (value.homePageData.data?.viewtypeList != null)
                for (int index = 0; index < value.homePageData.data!.viewtypeList!.length; index++)
                  renderWidget(value.homePageData.data!.viewtypeList![index].viewtype.toString(),
                      value.homePageData.data!.viewtypeList![index].datatype.toString(), value, index),
              SizedBox(height: 10),
              // BrandSpotlightWidget(),
              SizedBox(height: 10),
              // ShopByStoreWidget(),
            ],
          ),
        ),
      ],
    );
  }

  Widget renderWidget(String viewType,String dataType, HomePageViewModel value, int index) {
    if (viewType == 'category') {
      if(dataType == 'Grosery_And_Kitchen') {
        final categories = value.homePageData.data!.viewtypeList![index].data![0].category;
        for (var cat in categories!) {
          print('Product Name: ${cat.catName}');
        }
        return createNewWidget(value.homePageData.data!.viewtypeList![index].title.toString(), CategoriesList(categories: categories,),true, index);
      }
      else if (dataType == 'Snacks_Drinks') {
        final categories = value.homePageData.data!.viewtypeList![index].data![0].category;
        for (var cat in categories!) {
          print('Product Name: ${cat.catName}');
        }
        return createNewWidget(value.homePageData.data!.viewtypeList![index].title.toString(), CategoriesList(categories: categories,),true, index);
      }
      else if (dataType == 'brand_spotlight') {
        return Container();
        // final List<Category>? categories = value.homePageData.data!.viewtypeList![index].data![0].category;
        // // for (Category cat in categories!) {
        // //   print('Product Name: ${cat.catName}');
        // // }
        // print('Product Name: ${categories![0].catName}');
        // return createNewWidget(value.homePageData.data!.viewtypeList![index].title.toString(), CategoriesList(categories: categories,));
      }else{
        final categories = value.homePageData.data!.viewtypeList![index].data![0].category;
        for (var cat in categories!) {
          print('Product Name: ${cat.catName}');
        }
        return createNewWidget(value.homePageData.data!.viewtypeList![index].title.toString(), CategoriesList(categories: categories,),true, index);
      }


    } else if (viewType == 'Banner') {
      if(dataType == 'Main_banner'){
        return createNewWidget(value.homePageData.data!.viewtypeList![index].title.toString(), SliderScreen(),false, index);
      }else if (dataType == 'dicount_banner') {
        return createNewWidget(value.homePageData.data!.viewtypeList![index].title.toString(), SliderScreen(),false, index);
      }
      else if (dataType == 'Offer_banner') {
        return createNewWidget(value.homePageData.data!.viewtypeList![index].title.toString(), SliderScreen(),false, index);
      }
      else if (dataType == 'Coupon_banner') {
        return createNewWidget(value.homePageData.data!.viewtypeList![index].title.toString(), SliderScreen(),false, index);
      }else{
        return createNewWidget(value.homePageData.data!.viewtypeList![index].title.toString(), SliderScreen(),false, index);
      }

    }
    else if (viewType == 'Products') {
      if(dataType == 'latest_product_added') {
        final List<Data> products = value.homePageData.data!.viewtypeList![index].data!;
        for (Data product in products) {
          print('Product Name: ${product.productName}');
          // Access other properties as needed
        }
        return createNewWidget(value.homePageData.data!.viewtypeList![index].title.toString(), getHorizontalItemSlider(products),true, index);
      }
      else if (dataType == 'dicount_banner') {
        return createNewWidget(value.homePageData.data!.viewtypeList![index].title.toString(), SliderScreen(),false, index);
      }
      else if (dataType == 'Offer_banner') {
        return createNewWidget(value.homePageData.data!.viewtypeList![index].title.toString(), SliderScreen(),false, index);
      }
      else if (dataType == 'Coupon_banner') {
        return createNewWidget(value.homePageData.data!.viewtypeList![index].title.toString(), SliderScreen(),false, index);
      }else{
        return createNewWidget(value.homePageData.data!.viewtypeList![index].title.toString(), SliderScreen(), false, index);
      }

    }
    else if (viewType == 'video_type') {
      return createNewWidget(value.homePageData.data!.viewtypeList![index].title.toString(), VideoProducts(),true, index);

    }

    else {
      return HomeEndScreen(); // If viewType doesn't match known types, return an empty widget
    }
  }

  Widget createNewWidget(String title, Widget widget, bool isTitle,int index) {
    List<Widget> children = [];

    if (isTitle) {
      children.add(
        SizedBox(height: 16,),
      );
      children.add(
        padded(subTitle(title)),
      );
      children.add(
        SizedBox(height: 8,),
      );
    }

    if(index!=0){
      children.add(
        SizedBox(height: 16,),
      );
      children.add(widget);
    }else{
      children.add(widget);
    }


    return Column(
      children: children,
    );
  }




// Widget getHorizontalItemSlider(List<GroceryItem> items) {
//   return Container(
//     decoration: BoxDecoration(
//       border: Border.all(
//         color: Color(0xffE2E2E2),
//       ),
//       color: Colors.orange.withOpacity(0.15),
//     ),
//     margin: EdgeInsets.symmetric(vertical: 0),
//     height: 300,
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.end,
//       children: [
//         // SizedBox(height: 8.0),
//         padded(subTitle("Latest Product Added")),
//         Container(
//           decoration: BoxDecoration(
//             border: Border.all(
//               color: Colors.transparent,
//             ),
//             color: Colors.transparent,
//           ),
//           margin: EdgeInsets.symmetric(vertical: 5),
//           height: 215,
//           child: Padding(
//             padding: const EdgeInsets.symmetric(
//               vertical: 8.0,
//             ),
//             child: ListView.separated(
//               padding: EdgeInsets.symmetric(horizontal: 20),
//               itemCount: items.length,
//               scrollDirection: Axis.horizontal,
//               itemBuilder: (context, index) {
//                 return GestureDetector(
//                   onTap: () {
//                     onItemClicked(context, items[index]);
//                   },
//                   // child: GroceryItemCardWidget(
//                   //   item: items[index],
//                   //   heroSuffix: "home_screen",
//                   // ),
//                 );
//               },
//               separatorBuilder: (BuildContext context, int index) {
//                 return SizedBox(width: 20);
//               },
//             ),
//           ),
//         ),
//         Container(
//           height: 40.0,
//           decoration: BoxDecoration(
//             border: Border.all(
//               color: Colors.transparent,
//             ),
//             color: Colors.orange.withOpacity(0.20),
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Text(
//                 '   See All Products',
//                 style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 14,
//                     fontWeight: FontWeight.w500),
//               ),
//             ],
//           ),
//         )
//       ],
//     ),
//   );
// }
}
