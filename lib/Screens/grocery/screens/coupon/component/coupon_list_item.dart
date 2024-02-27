import 'package:all_app/Screens/grocery/data/models/response/coupon/CouponListResponseModel.dart';
import 'package:flutter/material.dart';

import '../../../styles/colors.dart';

class CouponListItem extends StatefulWidget {
  final CouponCode? code;
  final VoidCallback onTapCallback;
   CouponListItem({super.key, required this.code, required this.onTapCallback});

  @override
  State<CouponListItem> createState() => _CouponListItemState();
}

class _CouponListItemState extends State<CouponListItem> {
  @override
  Widget build(BuildContext context) {
    return
      Card(
        elevation: 4,
        margin:  EdgeInsets.all(8),
        child: Container(
          padding: EdgeInsets.all(16),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12), // Adjust the radius as needed
                      color: Colors.white, // Background color of the container
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12), // Same radius as the container
                      child: Image.network(
                        widget.code!.image.toString(), // Replace with your image URL
                        width: 24,
                        height: 24,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  SizedBox(width: 8), // Adding some space between the icon and text
                  Text(
                    widget.code!.promoCodeName.toString(),
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10,),
              Text('Unlock savings galore! Get ${widget.code!.promoCodeDiscount}% off on orders over Rs. ${widget.code!.promoCodeMinapplication}. Dive into delightful discounts now!',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey.shade700
                ),
              ),
              SizedBox(height: 15,),

              Text('Shop groceries effortlessly with our app! Hurry, limited-time coupons until ${widget.code!.expiryDate}',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey.shade500
                ),
              ),
              SizedBox(height: 10,),
              Divider(
                thickness: 2,
              ),

              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16,vertical: 4),
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.lightGreen,
                      border: Border.all(
                        color: Colors.blue, // Border colors// Dotted border style
                        width: 1, // Border width
                      ),
                    ),
                    child: Center(
                        child: Text('${widget.code!.promoCodeName}',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16,vertical: 4),
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: AppColors.primaryColor,
                        width: 1, // Border width
                      ),
                    ),
                    child: GestureDetector(
                      onTap: (){
                        widget.onTapCallback;
                      },
                      child: Center(
                          child: Text('Apply',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: AppColors.primaryColor
                            ),
                          )),
                    ),
                  )
                ],
              )
            ],
          ) ,
        ),
      );
  }
}
