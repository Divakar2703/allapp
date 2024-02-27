import 'package:flutter/material.dart';
import 'package:scratcher/scratcher.dart';

class MyxApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.white,
          elevation: 5.0,
          centerTitle: true,
          automaticallyImplyLeading: false,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.only(left: 25),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),
          ),
          title: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 25,
            ),
            child: Text(
              "Scratcher Card",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
        ),
        body: Center(
          child: Scratcher(
            accuracy: ScratchAccuracy.low,
            color: Colors.blue,
            brushSize: 50,
            threshold: 50,
            onThreshold: () {
              print('Scratch threshold reached!');
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(16)
              ),
              height: 300,
              width: 300,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 180,
                    height: 140,
                    decoration: BoxDecoration(
                      //  color: Color(0xFFe5f3f3),
                      image: DecorationImage(
                        image: AssetImage( "assets/images/grocery_images/cback2.png",), // Replace with your image path
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12,right: 12,top: 16),
                      // child: CircleAvatar(
                      //   radius: 30, // Adjust the size of the circle avatar as needed
                      //   backgroundImage: AssetImage(categoryImage),
                      //   backgroundColor: Colors.transparent,
                      // ),
                      child: Image.asset( "assets/images/grocery_images/gifting.png",

                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text(
                    '  You 5% Cashback on milk product\n             (GroceryCoupon123)!',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white,),
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
