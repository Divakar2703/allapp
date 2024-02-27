import 'package:flutter/material.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(16),
      color: Colors.black12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Unbeatable deals & discounts",
            style: TextStyle(
                fontSize: 13,
                color: Colors.black87,
                fontWeight: FontWeight.w500,
                fontFamily: "Muli"
            ),
          ),
          Text(
            "In sportlight",
            style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.w700,
                fontFamily: "Muli"
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              //   color: Colors.red,
              image: DecorationImage(
                image: AssetImage('assets/images/main/m1.png'), // Replace with the path to your image asset
                fit: BoxFit.cover,
              ),
              // child: Image.asset('assets/images/main/m1.png'),
            ),
          ),
          SizedBox(height: 10,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 8),
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    //   color: Colors.red,
                    image: DecorationImage(
                      image: AssetImage('assets/images/main/m5.png'), // Replace with the path to your image asset
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 8),
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    //   color: Colors.red,
                    image: DecorationImage(
                      image: AssetImage('assets/images/main/m6.png'), // Replace with the path to your image asset
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(right: 8),
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    //   color: Colors.red,
                    image: DecorationImage(
                      image: AssetImage('assets/images/main/m3.png'), // Replace with the path to your image asset
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 8),
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    //   color: Colors.red,
                    image: DecorationImage(
                      image: AssetImage('assets/images/main/m2.png'), // Replace with the path to your image asset
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
