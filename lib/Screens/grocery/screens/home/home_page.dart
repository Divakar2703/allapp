import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geocoding/geocoding.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import '../../common/color_extension.dart';
import '../../data/models/request/HomePage/home_page_dynamic_request_model.dart';
import '../../data/processResponse/status.dart';
import '../../models/grocery_item.dart';
import '../../styles/colors.dart';
import '../../viewmodels/view_model_home_page.dart';
import '../../widgets/grocery_item_card_widget.dart';
import '../../widgets/scratcher.dart';
import '../../widgets/search_bar_widget.dart';
import '../account/profileNewScreen.dart';
import '../product_details/product_details_screen.dart';
import 'components/all_nutrients.dart';
import 'components/as_seen_on_tv.dart';
import 'components/banner.dart';
import 'components/beauty.dart';
import 'components/bestsellers.dart';
import 'components/bestsellers_sell_all.dart';
import 'components/brand_spotlight.dart';
import 'components/cackes.dart';
import 'components/christmas.dart';
import 'components/home_end_screen.dart';
import 'components/search_field.dart';
import 'components/see_all_.dart';
import 'components/shop_by_stor.dart';
import 'components/shop_category_square.dart';
import 'components/snacks.dart';
import 'components/stay_warm_winter.dart';
import 'package:location/location.dart' as loc;

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  HomePageViewModel homePageViewModel = HomePageViewModel();
  ScrollController _scrollController = ScrollController();
  late List<Map<String, dynamic>> layoutData;
  loc.LocationData? locationData;
  List<Placemark>? placemark;
  String address = '';
  String locality = '';
  String state = '';

  @override
  void initState() {
    super.initState();
    layoutData = List<Map<String, dynamic>>.from([]);
    getPermission();
    final data = HomePageDynamicDataRequest(
      domain: "56testing.club",
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

    locationData = await loc.Location.instance.getLocation();
    if (locationData != null) {
      print(
          'Lattitude====================================${locationData!.latitude}   Longitude=====================${locationData!.longitude} ');
    }
    getAddress();
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
  void dispose() {
    _scrollController.dispose(); // Dispose the scroll controller
    super.dispose();
  }

  void _scrollToSectionEnd() {
    // Scroll to the end of the list by setting the offset to the maximum scroll extent
    _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
  }

  List carArr = [
    {
      "name": "code for any1",
      "number": "**** **** **** 2197",
      "month_year": "08/27"
    },
    {
      "name": "code for any2",
      "number": "**** **** **** 2198",
      "month_year": "09/27"
    },
    {
      "name": "code for any3",
      "number": "**** **** **** 2297",
      "month_year": "07/27"
    },
    {
      "name": "code for any4",
      "number": "**** **** **** 2397",
      "month_year": "05/27"
    },
  ];

  SwiperController controller = SwiperController();

  Widget buildSwiper() {
    return Swiper(
      itemCount: carArr.length,
      customLayoutOption: CustomLayoutOption(startIndex: -1, stateCount: 3)
        ..addRotate([-45.0 / 180, 0.0, 45.0 / 180])
        ..addTranslate([
          const Offset(-370.0, -40.0),
          Offset.zero,
          const Offset(370.0, -40.0),
        ]),
      fade: 1.0,
      onIndexChanged: (index) {
        print(index);
      },
      scale: 0.8,
      itemWidth: 350.0,
      itemHeight: 350,
      controller: controller,
      layout: SwiperLayout.STACK,
      viewportFraction: 0.8,
      itemBuilder: ((context, index) {
        var cObj = carArr[index] as Map? ?? {};
        return Container(
          decoration: BoxDecoration(
              color: TColor.gray70,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(color: Colors.black26, blurRadius: 4)
              ]),
          child: Stack(fit: StackFit.expand, children: [
            Image.asset(
              "assets/images/grocery_images/ahoovu.jpeg",
              width: 232.0,
              height: 350,
            ),
            Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Image.asset("assets/images/grocery_images/mastercard_logo.png",
                    width: 50),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "",
                  style: TextStyle(
                      color: TColor.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 115,
                ),
                Text(
                  cObj["name"] ?? "Code For Any",
                  style: TextStyle(
                      color: TColor.gray20,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  cObj["number"] ?? "**** **** **** 2197",
                  style: TextStyle(
                      color: TColor.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  cObj["month_year"] ?? "08/27",
                  style: TextStyle(
                      color: TColor.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ],
            )
          ]),
        );
      }),
      autoplayDisableOnInteraction: false,
      axisDirection: AxisDirection.right,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ChangeNotifierProvider<HomePageViewModel>(
          create: (BuildContext context) => homePageViewModel,
          child: Consumer<HomePageViewModel>(builder: (context, value, _) {
            switch (value.homePageData.status ?? "") {
              case Status.LOADING:
                return const Expanded(
                    child: Center(child: CircularProgressIndicator()));
              case Status.ERROR:
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
                                // Shadow color
                                spreadRadius: 3,
                                // Spread radius
                                blurRadius: 7,
                                // Blur radius
                                offset: const Offset(
                                    0, 3), // Changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              locationWidget(),
                              const SizedBox(height: 16),
                              const SearchField(),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                          child: SingleChildScrollView(
                              child: const HomeEndScreen())),
                    ],
                  ),
                );
              case Status.COMPLETED:
                return Expanded(
                  child: Container(
                    //color: Colors.blue.withOpacity(0.05),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
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
                                          // Shadow color
                                          spreadRadius: 3,
                                          // Spread radius
                                          blurRadius: 7,
                                          // Blur radius
                                          offset: const Offset(0,
                                              3), // Changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        locationWidget(),
                                        const SizedBox(height: 16),
                                        const SearchField(),
                                      ],
                                    ),
                                  ),
                                ),

                                //  SizedBox(height: 15),
                                Container(
                                    child: Column(
                                  children: [
                                    SizedBox(
                                      height: 8,
                                    ),
                                    padded(
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Grocery & Kitchen',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        SeeAll()),
                                              );
                                            },
                                            child: Text(
                                              'see all',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.green.shade600),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Container(
                                        height: 240,
                                        child:SizedBox(height: 10,)),
                                        // ShopCategorySquareList()),
                                    padded(
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Snacks & Drinks',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        SeeAll()),
                                              );
                                            },
                                            child: Text(
                                              'see all',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.green.shade600),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    SizedBox(height: 15),

                                    Container(height: 240, child: Snacks()),

                                    SizedBox(
                                      height: 12.0,
                                    ),
                                    padded(subTitle1("Discount")),
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    SliderScreen(),
                                    // SizedBox(
                                    //   height: 15,
                                    // ),
                                    // padded(
                                    //   Row(
                                    //     mainAxisAlignment:
                                    //         MainAxisAlignment.spaceBetween,
                                    //     children: [
                                    //       Text(
                                    //         'Bestsellers',
                                    //         style: TextStyle(
                                    //             fontSize: 18,
                                    //             fontWeight: FontWeight.w600),
                                    //       ),
                                    //       InkWell(
                                    //         onTap: () {
                                    //           Navigator.push(
                                    //             context,
                                    //             MaterialPageRoute(
                                    //                 builder: (context) =>
                                    //                     BestSellersSeeAll()),
                                    //           );
                                    //         },
                                    //         child: Text(
                                    //           'see all',
                                    //           style: TextStyle(
                                    //               fontSize: 13,
                                    //               fontWeight: FontWeight.w500,
                                    //               color: Colors.green.shade600),
                                    //         ),
                                    //       ),
                                    //     ],
                                    //   ),
                                    // ),
                                    // BestSellers(),
                                    // SizedBox(height: 15),
                                    // Text(
                                    //   'Coupons and Offers!',
                                    //   style: TextStyle(
                                    //       fontSize: 18, fontWeight: FontWeight.w600),
                                    // ),
                                    // Container(
                                    //     height: 400,
                                    //     child: buildSwiper()),

                                    // Container(
                                    //   height: 75,
                                    //   width: double.infinity,
                                    //   child: InkWell(
                                    //       onTap: () {
                                    //         Navigator.push(
                                    //           context,
                                    //           MaterialPageRoute(
                                    //               builder: (context) =>
                                    //                   MyxApp()),
                                    //         );
                                    //       },
                                    //       child: Image.asset(
                                    //         "assets/images/grocery_images/christmas_hedline.png",
                                    //       )),
                                    // ),
                                    // Container(height: 210, child: Christms()),

                                    SizedBox(
                                      height: 12.0,
                                    ),
                                    padded(subTitle1("Main")),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: double.infinity,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Color(0xffE2E2E2),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          color: Colors.transparent,
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                'https://grossry.56testing.club/media/main_banner/appmain_banner1706773997.png'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 17,
                                    ),

                                    // padded(
                                    //   Row(
                                    //     mainAxisAlignment:
                                    //         MainAxisAlignment.spaceBetween,
                                    //     children: [
                                    //       Text(
                                    //         'Cakes recipes',
                                    //         style: TextStyle(
                                    //             fontSize: 18,
                                    //             fontWeight: FontWeight.w600),
                                    //       ),
                                    //       Text(
                                    //         'see all',
                                    //         style: TextStyle(
                                    //             fontSize: 13,
                                    //             fontWeight: FontWeight.w500,
                                    //             color: Colors.green.shade600),
                                    //       ),
                                    //     ],
                                    //   ),
                                    // ),
                                    // SizedBox(
                                    //   height: 10,
                                    // ),
                                    // Cakes(),

                                    padded(subTitle("Offer")),
                                    SizedBox(height: 10),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                              width: 350.0,
                                              height: 170.0,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Color(0xffE2E2E2),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(18.0),
                                                color: Colors.transparent,
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      'https://grossry.56testing.club/media/main_banner/appmain_banner1706773997.png'),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                              width: 350.0,
                                              height: 170.0,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Color(0xffE2E2E2),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(18.0),
                                                color: Colors.transparent,
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      'https://grossry.56testing.club/media/main_banner/appmain_banner1706774025.png'),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    padded(subTitle("Coupons")),
                                    SizedBox(height: 10),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: double.infinity,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Color(0xffE2E2E2),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          color: Colors.transparent,
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                'https://t4.ftcdn.net/jpg/03/06/69/49/360_F_306694930_S3Z8H9Qk1MN79ZUe7bEWqTFuonRZdemw.jpg'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    padded(subTitle("Brand Spotlight")),
                                    SizedBox(height: 10),
                                    Container(
                                        margin: EdgeInsets.all(4),
                                        height: 150,
                                        child: BrandSpotlight()),

                                    // padded(
                                    //   Row(
                                    //     mainAxisAlignment:
                                    //         MainAxisAlignment.spaceBetween,
                                    //     children: [
                                    //       Text(
                                    //         "Beauty & Personal care",
                                    //         style: TextStyle(
                                    //             fontSize: 18,
                                    //             fontWeight: FontWeight.w600),
                                    //       ),
                                    //       InkWell(
                                    //         onTap: () {
                                    //           Navigator.push(
                                    //             context,
                                    //             MaterialPageRoute(
                                    //                 builder: (context) =>
                                    //                     SeeAll()),
                                    //           );
                                    //         },
                                    //         child: Text(
                                    //           'see all',
                                    //           style: TextStyle(
                                    //               fontSize: 13,
                                    //               fontWeight: FontWeight.w500,
                                    //               color: Colors.green.shade600),
                                    //         ),
                                    //       ),
                                    //     ],
                                    //   ),
                                    // ),

                                    // SizedBox(height: 15),
                                    // Container(height: 240, child: Beauty()),

                                    padded(subTitle('As seen on TV')),
                                    // SizedBox(height: 10),
                                    // AsSeenOnTV(),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          Container(
                                              margin: EdgeInsets.all(8),
                                              height: 120,
                                              width: 210,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Colors.white70,
                                              ),
                                              child: PlayVideoFromNetwork(
                                                videoPath:
                                                    'https://grossry.56testing.club/media/product_video/Productvideo51707549615.mp4',
                                              )),

                                          SizedBox(width: 10),
                                          Container(
                                              margin: EdgeInsets.all(8),
                                              height: 120,
                                              width: 210,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: AppColors.primaryColor
                                                ,
                                              ),
                                              child: PlayVideoFromNetwork(
                                                videoPath:
                                                    'https://grossry.56testing.club/media/product_video/Productvideo161707549556.mp4',
                                              )),
                                          SizedBox(width: 10),
                                          Container(
                                              margin: EdgeInsets.all(8),
                                              height: 120,
                                              width: 210,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Colors.white70,
                                              ),
                                              child: PlayVideoFromNetwork(
                                                videoPath:
                                                    'https://grossry.56testing.club/media/product_video/Productvideo181707549402.mp4',
                                              )),
                                          // VideoPlayerWidget(videoPath: 'https://www.youtube.com/watch?v=E7Lr4prCf3E')),
                                        ],
                                      ),
                                    ),

                                    SizedBox(height: 10),
                                    getHorizontalItemSlider(exclusiveOffers),
                                    SizedBox(height: 8),

                                    Container(
                                      height: 75,
                                      width: double.infinity,
                                      child: Image.asset(
                                        "assets/images/grocery_images/w_h.png",
                                      ),
                                    ),
                                    Container(
                                        height: 210, child: StayWarmWinter()),

                                    SizedBox(height: 12),

                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: double.infinity,
                                        height: 170.0,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Color(0xffE2E2E2),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          color: Colors.transparent,
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                'https://www.spotneats.com/blog/wp-content/uploads/2023/06/Grocery-to-Food.png'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),

                                    SizedBox(height: 10),
                                    padded(subTitle("Shop by store")),
                                    SizedBox(height: 10),
                                    Container(
                                        margin: EdgeInsets.all(4),
                                        height: 340,
                                        child: ShopByStore()),

                                    // getHorizontalItemSlider1(bestSelling),

                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 4, right: 4),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'All nutrients that your body needs',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            'see all',
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.green.shade600),
                                          ),
                                        ],
                                      ),
                                    ),

                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                        height: 255, child: AllNutrients()),

                                    //    SizedBox(height: 15),
                                    // getHorizontalItemSlider2(groceries),
                                    SizedBox(height: 8),

                                    SizedBox(height: 15),
                                    padded(subTitle("Household Essentials")),
                                    SizedBox(height: 15),
                                    Container(
                                        height: 240,
                                        child:SizedBox(height: 10,)
                                        // ShopCategorySquareList()
                                        ),

                                    // getHorizontalItemSlider4(bestSelling),

                                    HomeEndScreen(),
                                  ],
                                )),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
            }

            return Container();
          }),
        ),
      ])),
    );
  }

  Widget padded(Widget widget) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: widget,
    );
  }

  Widget getHorizontalItemSlider(List<GroceryItem> items) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xffE2E2E2),
        ),
        color: Colors.orange.withOpacity(0.15),
      ),
      margin: EdgeInsets.symmetric(vertical: 0),
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // SizedBox(height: 8.0),
          padded(subTitle("Latest Product Added")),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.transparent,
              ),
              color: Colors.transparent,
            ),
            margin: EdgeInsets.symmetric(vertical: 5),
            height: 215,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
              ),
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 20),
                itemCount: items.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      onItemClicked(context, items[index]);
                    },
                    // child: GroceryItemCardWidget(
                    //   item: items[index],
                    //   heroSuffix: "home_screen",
                    // ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(width: 20);
                },
              ),
            ),
          ),
          Container(
            height: 40.0,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.transparent,
              ),
              color: Colors.orange.withOpacity(0.20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '   See All Products',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget getHorizontalItemSlider1(List<GroceryItem> items) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.transparent,
        ),
        color: Colors.transparent,
      ),
      height: 290,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          padded(subTitle("Most Discounted Product Added")),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.transparent,
              ),
              color: Colors.transparent,
            ),
            margin: EdgeInsets.symmetric(vertical: 10),
            height: 230,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
              ),
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 20),
                itemCount: items.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      onItemClicked(context, items[index]);
                    },
                    // child: GroceryItemCardWidget(
                    //   item: items[index],
                    //   heroSuffix: "home_screen",
                    // ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(width: 20);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getHorizontalItemSlider4(List<GroceryItem> items) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.transparent,
        ),
        color: Colors.transparent,
      ),
      height: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          padded(subTitle("Trending in your Area")),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.transparent,
              ),
              color: Colors.transparent,
            ),
            margin: EdgeInsets.symmetric(vertical: 8),
            height: 210,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
              ),
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 10),
                itemCount: items.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      onItemClicked(context, items[index]);
                    },
                    //   child: GroceryItemCardWidget(
                    //     item: items[index],
                    //     heroSuffix: "home_screen",
                    //   ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(width: 20);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getHorizontalItemSlider2(List<GroceryItem> items) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.transparent,
        ),
        color: Colors.blue.withOpacity(0.15),
      ),
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 310,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          padded(subTitle("Latest Product Added")),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xffE2E2E2),
              ),
              color: Colors.transparent,
            ),
            margin: EdgeInsets.symmetric(vertical: 10),
            height: 210,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 10),
                itemCount: items.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      onItemClicked(context, items[index]);
                    },
                    // child: GroceryItemCardWidget(
                    //   item: items[index],
                    //   heroSuffix: "home_screen",
                    // ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(width: 20);
                },
              ),
            ),
          ),
          Container(
            height: 40.0,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xffE2E2E2),
              ),
              color: Colors.blue.withOpacity(0.45),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '   See All Products',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void onItemClicked(BuildContext context, GroceryItem groceryItem) {
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) =>
    //         ProductDetailsScreen(
    //           '4',
    //           heroSuffix: "home_screen",
    //         ),
    //   ),
    // );
  }

  Widget subTitle(String text) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        Spacer(),
      ],
    );
  }

  Widget subTitle1(String text) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Text(
          "See All",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }

  Widget locationWidget() {
    String locationIconPath = "assets/icons/location_icon.svg";
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          SvgPicture.asset(
            locationIconPath,
            color: Colors.white,
          ),
          SizedBox(width: 8),
          Text(
            "$locality, $state",
            style: TextStyle(
                fontSize: 19, fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ]),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileNewScreen()),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white54, // Set the border color here
                width: 1.5, // Set the border width
              ),
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/sonu.jpg'),
              radius: 23,
            ),
          ),
        ),
      ],
    );
  }
}
