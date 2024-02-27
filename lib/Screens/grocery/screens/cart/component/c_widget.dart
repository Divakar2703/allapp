import 'package:all_app/Screens/grocery/screens/address/address_list.dart';
import 'package:all_app/Screens/grocery/screens/cart/component/product_list_item.dart';
import 'package:all_app/Screens/grocery/screens/choose_payment/card/cards_view.dart';
import 'package:flutter/material.dart';

import '../../coupon/avali_offerd_coupons.dart';

class CWidget extends StatefulWidget {
  const CWidget({super.key});

  @override
  State<CWidget> createState() => _CWidgetState();
}

class _CWidgetState extends State<CWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin:  EdgeInsets.symmetric(horizontal: 8),
            padding: EdgeInsets.symmetric(horizontal: 8),
            width:double.infinity,
            height: 50,
            decoration:
            BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.greenAccent
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivering in:',
              style: TextStyle(
                fontSize: 16,
                color: Colors.blue,
                fontWeight: FontWeight.w600
              ),
                  ),
                Text(
                    "14 mins",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Text(
                  '8 Items in this Order',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700
                  ),
                ),
              ],
            ),
          ),
          Card(
            elevation: 5,
            child:
            Container(
             height: 300, // Example height constraint
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return CartProductItem();
                },
              ),
            )
      
          ),
      
          SizedBox(height: 10,),
          Card(
            elevation: 4,
            child: Container(
              child: Column(
      
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                    child: Row(
                      children: [
                        Text(
                          'You might have missed',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(16),
                          padding: EdgeInsets.all(8),
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey.shade500,
                              width: 1
                            ),
                            borderRadius: BorderRadius.circular(12)
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.star_border_outlined,color: Colors.grey.shade500,)
                                ],
                              ),
                              Image(
                                image: AssetImage("assets/images/rise.png"),
                                height: 80,
                                width: double.infinity,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Rise',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4,),
                              Row(
                                children: [
                                  Text(
                                    '7 kg*2',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey.shade600
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Rs.2324',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Icon(Icons.shopping_cart_rounded,color: Colors.green,)
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(16),
                          padding: EdgeInsets.all(8),
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey.shade500,
                                  width: 1
                              ),
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: GestureDetector(
                            onTap: (){
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => AddAddress()),
                              // );
                            },
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.star_border_outlined,color: Colors.grey.shade500,)
                                  ],
                                ),
                                Image(
                                  image: AssetImage("assets/images/rise.png"),
                                  height: 80,
                                  width: double.infinity,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Rise',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 4,),
                                Row(
                                  children: [
                                    Text(
                                      '7 kg*2',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey.shade600
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Rs.2324',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Icon(Icons.shopping_cart_rounded,color: Colors.green,)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(16),
                          padding: EdgeInsets.all(8),
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey.shade500,
                                  width: 1
                              ),
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.star_border_outlined,color: Colors.grey.shade500,)
                                ],
                              ),
                              Image(
                                image: AssetImage("assets/images/rise.png"),
                                height: 80,
                                width: double.infinity,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Rise',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4,),
                              Row(
                                children: [
                                  Text(
                                    '7 kg*2',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey.shade600
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Rs.2324',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Icon(Icons.shopping_cart_rounded,color: Colors.green,)
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
      
          InkWell(
            onTap: () {
              // Navigate to the next screen when the card is tapped
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CouponsScreen(),
                ),
              );
            },
            child: Card(
              elevation: 4,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                width:double.infinity,
                height: 55,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Avail/Offered Coupons',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios_outlined,color: Colors.green,size: 24,)
                  ],
                ),
              ),
            ),
          ),
      
          Card(
            elevation: 4,
            child: Container(
              padding: EdgeInsets.all(16),
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Bill  Details',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Item total (incl. taxes)',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Rs.798',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
      
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Product Discount',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.blue,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '-Rs.14',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.blue,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
      
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Handling Charge',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '+Rs.8',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
      
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery Charge',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '+Rs.28',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
      
                    ],
                  ),
      
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Bill total',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Rs.928',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
      
                    ],
                  ),
      
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    width:double.infinity,
                    height: 45,
                    decoration:
                    BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.blue.shade100
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Your total Saving',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.blue,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        Text(
                          "Rs.122",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.blue,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
      
          Card(
            elevation: 4,
            child: Container(
              padding: EdgeInsets.all(8),
              width:double.infinity,
              height: 45,
              decoration:
              BoxDecoration(
                  color: Colors.green.shade100
              ),
              child: Row(
                children: [
                  Icon(Icons.check_box_outline_blank_outlined,color: Colors.green,),
                  SizedBox(width: 5,),
                  Text(
                    "I don't need paper bag",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      color: Colors.black87
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Know more",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.green,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            elevation: 4,
            child: Container(
              padding: EdgeInsets.all(8),
              width:double.infinity,
      
              decoration:
              BoxDecoration(
                  color: Colors.white70
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.add_home_work_rounded,color: Colors.orange,size: 30,),
                  SizedBox(width: 8,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Delivering to Home",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87
                        ),
                      ),
                      SizedBox(height: 2.0,),
                      Text(
                        "Floor 4, Flare no.1, Gorakhpur",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black87
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddressList()),
                      );
                    },
                    child: Text(
                      "Change",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.green,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
      
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CardsView()),
              );
            },
            child: Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(6),
              width:double.infinity,
              decoration:
              BoxDecoration(
                  color: Colors.green,
                borderRadius: BorderRadius.circular(12)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Rs.567/-',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  SizedBox(height: 2,),
                  Text(
                    "CONTINUE PAYMENT",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ],
              ),
            ),
          ),
      
        ],
      ),
    );
  }
}
