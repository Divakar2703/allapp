import 'package:all_app/Screens/grocery/screens/home/components/see_all_.dart';
import 'package:flutter/material.dart';

class BestSellers extends StatefulWidget {
  const BestSellers({super.key});

  @override
  State<BestSellers> createState() => _BestSellersState();
}

class _BestSellersState extends State<BestSellers> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SeeAll()),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(4),
                    width: 152,
                    decoration: BoxDecoration(
                        color: Color(0xffd2f6f6),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 65,
                              height: 55,
                              margin: EdgeInsets.all(3),
                              decoration:BoxDecoration(
                                color: Colors.white,
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: Image.asset( "assets/images/grocery_images/ice.png",
                              ),
                            ),
                          Container(
                            width: 65,
                            height: 55,

                            margin: EdgeInsets.all(3),
                           decoration:BoxDecoration(
                              color: Colors.white,
                               borderRadius: BorderRadius.circular(8)
                          ),
                            child: Image.asset("assets/images/grocery_images/organo.png",
                            ),
                          )
                              ],
                        ),

                        Row(
                          children: [
                            Container(
                              width: 65,
                              height: 55,

                              margin: EdgeInsets.all(3),
                              decoration:BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: Image.asset( "assets/images/grocery_images/bread.png",),
                            ),
                            Container(
                              width: 64,
                              height: 57,
                              margin: EdgeInsets.all(3),
                              decoration:BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: Center(
                                child: Text(
                                  '+28',
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    'Milk, Curd & Paneer',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    '6, products',
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 13,
                        fontWeight: FontWeight.w400
                    ),
                  ),

                  SizedBox(height: 15,),


                  Container(
                    margin: EdgeInsets.only(left: 4,right: 4),

                    height: 30,
                    width:144,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                        color: Colors.grey.shade400
                      )
                    ),
                    child: Center(
                      child: Text(
                        'See All',
                        style: TextStyle(
                            color: Colors.green.shade800,
                            fontSize: 13,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  width: 152,
                  decoration: BoxDecoration(
                      color: Color(0xffd2f6f6),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 65,
                            height: 55,
                            margin: EdgeInsets.all(3),
                            decoration:BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: Image.asset( "assets/images/grocery_images/kela.png",
                            ),
                          ),
                          Container(
                            width: 65,
                            height: 55,

                            margin: EdgeInsets.all(3),
                            decoration:BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: Image.asset("assets/images/grocery_images/Tomatoo.png",
                            ),
                          )
                        ],
                      ),

                      Row(
                        children: [
                          Container(
                            width: 65,
                            height: 55,

                            margin: EdgeInsets.all(3),
                            decoration:BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: Image.asset( "assets/images/grocery_images/onion.png",),
                          ),
                          Container(
                            width: 64,
                            height: 57,
                            margin: EdgeInsets.all(3),
                            decoration:BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: Center(
                              child: Text(
                                '+4',
                                style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  'Vegetables',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  '21, products',
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 13,
                      fontWeight: FontWeight.w400
                  ),
                ),

                SizedBox(height: 15,),


                Container(
                  margin: EdgeInsets.only(left: 4,right: 4),

                  height: 30,
                  width:144,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          width: 1,
                          color: Colors.grey.shade400
                      )
                  ),
                  child: Center(
                    child: Text(
                      'See All',
                      style: TextStyle(
                          color: Colors.green.shade800,
                          fontSize: 13,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  width: 152,
                  decoration: BoxDecoration(
                      color: Color(0xffd2f6f6),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 65,
                            height: 55,
                            margin: EdgeInsets.all(3),
                            decoration:BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: Image.asset( "assets/images/grocery_images/i.png",
                            ),
                          ),
                          Container(
                            width: 65,
                            height: 55,

                            margin: EdgeInsets.all(3),
                            decoration:BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: Image.asset("assets/images/grocery_images/meggi.png",
                            ),
                          )
                        ],
                      ),

                      Row(
                        children: [
                          Container(
                            width: 65,
                            height: 55,

                            margin: EdgeInsets.all(3),
                            decoration:BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: Image.asset( "assets/images/grocery_images/maggi1.png",),
                          ),
                          Container(
                            width: 64,
                            height: 57,
                            margin: EdgeInsets.all(3),
                            decoration:BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: Center(
                              child: Text(
                                '+12',
                                style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  'Noodles',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  '9, products',
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 13,
                      fontWeight: FontWeight.w400
                  ),
                ),

                SizedBox(height: 15,),


                Container(
                  margin: EdgeInsets.only(left: 4,right: 4),

                  height: 30,
                  width:144,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          width: 1,
                          color: Colors.grey.shade400
                      )
                  ),
                  child: Center(
                    child: Text(
                      'See All',
                      style: TextStyle(
                          color: Colors.green.shade800,
                          fontSize: 13,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  width: 152,
                  decoration: BoxDecoration(
                      color: Color(0xffd2f6f6),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 65,
                            height: 55,
                            margin: EdgeInsets.all(3),
                            decoration:BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: Image.asset( "assets/images/grocery_images/chips.png",
                            ),
                          ),
                          Container(
                            width: 65,
                            height: 55,

                            margin: EdgeInsets.all(3),
                            decoration:BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: Image.asset("assets/images/grocery_images/c2.png",
                            ),
                          )
                        ],
                      ),

                      Row(
                        children: [
                          Container(
                            width: 65,
                            height: 55,

                            margin: EdgeInsets.all(3),
                            decoration:BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: Image.asset( "assets/images/grocery_images/maggi1.png",),
                          ),
                          Container(
                            width: 64,
                            height: 57,
                            margin: EdgeInsets.all(3),
                            decoration:BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: Center(
                              child: Text(
                                '+21',
                                style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  'Chips &  Crisps',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  '18, products',
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 13,
                      fontWeight: FontWeight.w400
                  ),
                ),

                SizedBox(height: 15,),


                Container(
                  margin: EdgeInsets.only(left: 4,right: 4),

                  height: 30,
                  width:144,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          width: 1,
                          color: Colors.grey.shade400
                      )
                  ),
                  child: Center(
                    child: Text(
                      'See All',
                      style: TextStyle(
                          color: Colors.green.shade800,
                          fontSize: 13,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                )
              ],
            ),


          ],
        ),
      ),
    );
  }
}
