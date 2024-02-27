import 'package:all_app/Screens/grocery/common_widgets/app_text.dart';
import 'package:all_app/Screens/grocery/models/category_item.dart';
import 'package:all_app/Screens/grocery/widgets/search_bar_widget.dart';
import 'package:flutter/material.dart';
import '../home/components/beauty.dart';
import '../home/components/see_all_.dart';
import '../home/components/shop_by_stor.dart';
import '../home/components/snacks.dart';
import '../subcategories_products/category_items_screen.dart';

List<Color> gridColors = [
  Color(0xff53B175),
  Color(0xffF8A44C),
  Color(0xffF7A593),
  Color(0xffD3B0E0),
  Color(0xffFDE598),
  Color(0xffB7DFF5),
  Color(0xff836AF6),
  Color(0xffD73B77),
];

class ExploreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 5.0,
          centerTitle: true,
          automaticallyImplyLeading: false,

          title: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 25,
            ),
            child: AppText(
              text: "Find Products",
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        body: SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // getHeader(),
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
                        borderRadius: BorderRadius.circular(18.0),
                        color: Colors.transparent,
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://grossry.56testing.club/grossry/media/offer_banner/mos.jpg'),
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
                        borderRadius: BorderRadius.circular(18.0),
                        color: Colors.transparent,
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://grossry.56testing.club/grossry/media/offer_banner/station.jpg'),
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
                        borderRadius: BorderRadius.circular(18.0),
                        color: Colors.transparent,
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://grossry.56testing.club/grossry/media/offer_banner/1691749957.jpg'),
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
                        borderRadius: BorderRadius.circular(18.0),
                        color: Colors.transparent,
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://grossry.56testing.club/grossry/media/offer_banner/mos.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          //  padded(SearchBarWidget()),

            padded(subTitle("Shop by store")),
            SizedBox(height: 10),
            Container(
                margin: EdgeInsets.all(4),
                height: 340,
                child: ShopByStore()),

            SizedBox(height: 8),
            padded(
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Grocery & Kitchen',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SeeAll()),
                      );
                    },
                    child: Text(
                      'see all',
                      style: TextStyle(fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.green.shade600
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
                height: 240, child:SizedBox(height: 10,)),
            // ShopCategorySquareList()),
            SizedBox(height: 8),
            padded(
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Snacks & Drinks',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SeeAll()),
                      );
                    },
                    child: Text(
                      'see all',
                      style: TextStyle(fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.green.shade600
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 15),
            Container(height: 240, child: Snacks()),
            SizedBox(height: 8),
            padded(
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Beauty & Personal care",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SeeAll()),
                      );
                    },
                    child: Text(
                      'see all',
                      style: TextStyle(fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.green.shade600
                      ),
                    ),
                  ),

                ],
              ),
            ),

            SizedBox(height: 15),

            Container(height: 240, child: Beauty()),
            SizedBox(height: 16),
            // Expanded(
            //   child: getStaggeredGridView(context),
            // ),
          ],
        ),
      ),
    ));
  }

  Widget getHeader() {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Center(
          child: AppText(
            text: "Find Products",
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: SearchBarWidget(),
        ),
      ],
    );
  }
  Widget padded(Widget widget) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: widget,
    );
  }
  Widget subTitle(String text) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Spacer(),
      ],
    );
  }

  void onCategoryItemClicked(BuildContext context, CategoryItem categoryItem) {
    Navigator.of(context).push(new MaterialPageRoute(
      builder: (BuildContext context) {
        return CategoryItemsScreen();
      },
    ));
  }
}
