import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeadLineServices extends StatefulWidget {
  const HeadLineServices({super.key});

  @override
  State<HeadLineServices> createState() => _HeadLineServicesState();
}

class _HeadLineServicesState extends State<HeadLineServices> {
  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Gurugram - Delhi Expy",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Muli"
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Block B, Mahipalpur Village - Mahipal...",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white70,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Muli"
                          ),
                        ),
                        Icon(Icons.keyboard_arrow_down_outlined,color: Colors.white,size: 20,)
                      ],
                    ),
                  ],
                ),
                SvgPicture.asset(
                  'assets/icons/shopping-cart-outline-svgrepo-com.svg',
                  color: Colors.white,
                  height: 22.0,
                  width: 22.0,
                ),
              ],
            ),

        SizedBox(
          height: 20,
        ),
        Container(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 45.0,
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.white
                    // border: Border.all(
                    //   color: Colors.white70,
                    // ),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/search (1).svg',
                        color: Colors.black87,
                        height: 20.0,
                        width: 20.0,
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search BitsPan...',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black87,
                                fontFamily: "Muli"
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
          ],
        ),
      );
  }
}
