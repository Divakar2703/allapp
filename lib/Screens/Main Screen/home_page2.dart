
import 'package:all_app/Screens/Main%20Screen/components/search_field.dart';
import 'package:all_app/Screens/Main%20Screen/components/slider_Main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'components/CategoryItem.dart';
import '../../constants.dart';
import 'components/home_header.dart';
import 'components/main _items/first.dart';
import 'components/second_mainSlider.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(145.0),
          child: AppBar(
         backgroundColor: bgColor,
            title: null,
            flexibleSpace: Column(
              children: [
                HomeHeader(),
                SizedBox(
                  height: 10,
                ),
                SearchField(),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/location.svg',
                        color: Colors.white,
                        height: 17.0,
                        width: 17.0,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Chittorgarh, ",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Muli"
                        ),
                      ),
                      Text(
                        "312021",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.red.shade400,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Muli"
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20)
            ),
            color: Colors.white
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 12,
                ),
                CategoryItem(),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SliderScreenMain(),
                ),

                First(),

            
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}


