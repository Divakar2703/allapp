import 'package:flutter/material.dart';

class BestSellersSeeAll extends StatefulWidget {
  const BestSellersSeeAll({super.key});

  @override
  State<BestSellersSeeAll> createState() => _BestSellersSeeAllState();
}

class _BestSellersSeeAllState extends State<BestSellersSeeAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            "Bestsellers Products",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(4),
                          //  width: 152,
                            decoration: BoxDecoration(
                                color: Color(0xffd2f6f6),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 60,
                                        margin: EdgeInsets.all(3),
                                        decoration:BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(8)
                                        ),
                                        child: Image.asset( "assets/images/grocery_images/kela.png",
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 60,

                                        margin: EdgeInsets.all(3),
                                        decoration:BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(8)
                                        ),
                                        child: Image.asset("assets/images/grocery_images/Tomatoo.png",
                                        ),
                                      ),
                                    )
                                  ],
                                ),

                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 60,

                                        margin: EdgeInsets.all(3),
                                        decoration:BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(8)
                                        ),
                                        child: Image.asset( "assets/images/grocery_images/onion.png",),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 60,
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

                          SizedBox(height: 10,),


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
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: Color(0xffd2f6f6),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 60,
                                        margin: EdgeInsets.all(3),
                                        decoration:BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(8)
                                        ),
                                        child: Image.asset( "assets/images/grocery_images/i.png",
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(

                                        height: 60,

                                        margin: EdgeInsets.all(3),
                                        decoration:BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(8)
                                        ),
                                        child: Image.asset("assets/images/grocery_images/meggi.png",
                                        ),
                                      ),
                                    )
                                  ],
                                ),

                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 60,

                                        margin: EdgeInsets.all(3),
                                        decoration:BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(8)
                                        ),
                                        child: Image.asset( "assets/images/grocery_images/maggi1.png",),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 60,
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

                          SizedBox(height: 10,),


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
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(4),
                            //  width: 152,
                            decoration: BoxDecoration(
                                color: Color(0xffd2f6f6),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 60,
                                        margin: EdgeInsets.all(3),
                                        decoration:BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(8)
                                        ),
                                        child: Image.asset( "assets/images/grocery_images/kela.png",
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 60,

                                        margin: EdgeInsets.all(3),
                                        decoration:BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(8)
                                        ),
                                        child: Image.asset("assets/images/grocery_images/Tomatoo.png",
                                        ),
                                      ),
                                    )
                                  ],
                                ),

                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 60,

                                        margin: EdgeInsets.all(3),
                                        decoration:BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(8)
                                        ),
                                        child: Image.asset( "assets/images/grocery_images/onion.png",),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 60,
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

                          SizedBox(height: 10,),


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
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: Color(0xffd2f6f6),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 60,
                                        margin: EdgeInsets.all(3),
                                        decoration:BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(8)
                                        ),
                                        child: Image.asset( "assets/images/grocery_images/i.png",
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(

                                        height: 60,

                                        margin: EdgeInsets.all(3),
                                        decoration:BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(8)
                                        ),
                                        child: Image.asset("assets/images/grocery_images/meggi.png",
                                        ),
                                      ),
                                    )
                                  ],
                                ),

                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 60,

                                        margin: EdgeInsets.all(3),
                                        decoration:BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(8)
                                        ),
                                        child: Image.asset( "assets/images/grocery_images/maggi1.png",),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 60,
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

                          SizedBox(height: 10,),


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
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(4),
                            //  width: 152,
                            decoration: BoxDecoration(
                                color: Color(0xffd2f6f6),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 60,
                                        margin: EdgeInsets.all(3),
                                        decoration:BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(8)
                                        ),
                                        child: Image.asset( "assets/images/grocery_images/kela.png",
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 60,

                                        margin: EdgeInsets.all(3),
                                        decoration:BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(8)
                                        ),
                                        child: Image.asset("assets/images/grocery_images/Tomatoo.png",
                                        ),
                                      ),
                                    )
                                  ],
                                ),

                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 60,

                                        margin: EdgeInsets.all(3),
                                        decoration:BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(8)
                                        ),
                                        child: Image.asset( "assets/images/grocery_images/onion.png",),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 60,
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

                          SizedBox(height: 10,),


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
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: Color(0xffd2f6f6),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 60,
                                        margin: EdgeInsets.all(3),
                                        decoration:BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(8)
                                        ),
                                        child: Image.asset( "assets/images/grocery_images/i.png",
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(

                                        height: 60,

                                        margin: EdgeInsets.all(3),
                                        decoration:BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(8)
                                        ),
                                        child: Image.asset("assets/images/grocery_images/meggi.png",
                                        ),
                                      ),
                                    )
                                  ],
                                ),

                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 60,

                                        margin: EdgeInsets.all(3),
                                        decoration:BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(8)
                                        ),
                                        child: Image.asset( "assets/images/grocery_images/maggi1.png",),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 60,
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

                          SizedBox(height: 10,),


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
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(4),
                            //  width: 152,
                            decoration: BoxDecoration(
                                color: Color(0xffd2f6f6),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 60,
                                        margin: EdgeInsets.all(3),
                                        decoration:BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(8)
                                        ),
                                        child: Image.asset( "assets/images/grocery_images/kela.png",
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 60,

                                        margin: EdgeInsets.all(3),
                                        decoration:BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(8)
                                        ),
                                        child: Image.asset("assets/images/grocery_images/Tomatoo.png",
                                        ),
                                      ),
                                    )
                                  ],
                                ),

                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 60,

                                        margin: EdgeInsets.all(3),
                                        decoration:BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(8)
                                        ),
                                        child: Image.asset( "assets/images/grocery_images/onion.png",),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 60,
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

                          SizedBox(height: 10,),


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
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: Color(0xffd2f6f6),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 60,
                                        margin: EdgeInsets.all(3),
                                        decoration:BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(8)
                                        ),
                                        child: Image.asset( "assets/images/grocery_images/i.png",
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(

                                        height: 60,

                                        margin: EdgeInsets.all(3),
                                        decoration:BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(8)
                                        ),
                                        child: Image.asset("assets/images/grocery_images/meggi.png",
                                        ),
                                      ),
                                    )
                                  ],
                                ),

                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 60,

                                        margin: EdgeInsets.all(3),
                                        decoration:BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(8)
                                        ),
                                        child: Image.asset( "assets/images/grocery_images/maggi1.png",),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 60,
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

                          SizedBox(height: 10,),


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
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
