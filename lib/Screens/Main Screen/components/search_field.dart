import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../constants.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 45.0,
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
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
          SizedBox(width: 10),
          Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              height: 44,
              width: 80,
              padding: EdgeInsets.only(left: 8,right: 2,top: 2,bottom: 1),
              decoration: BoxDecoration(
                color: Color(0xFFfe5726),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "BITS",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontFamily: "Muli"
                        ),
                      ),
                      Text(
                        "PASS",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff1b0c2c),
                            fontWeight: FontWeight.w900,
                            fontFamily: "Muli"
                        ),
                      )
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios,
                  size: 18,
                    color: Colors.white,
                  )
                ],
              )
            ),
          ),
        ],
      ),
    );
  }
}
