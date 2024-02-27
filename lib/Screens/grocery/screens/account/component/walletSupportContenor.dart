import 'package:flutter/material.dart';

class WalletSupportContenor extends StatelessWidget {
  const WalletSupportContenor({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(horizontal: 24,vertical: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        color: Colors.blue.shade50
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Column(
           children: [
             Icon(
               Icons.account_balance_wallet_outlined,
               color: Colors.grey.shade800,
               size: 22,// Set the icon color
             ),
             SizedBox(height: 4,),
             Text(
               "Wallet",
               style: TextStyle(
                   fontSize: 11,
                   fontWeight: FontWeight.w500,
                   color: Colors.grey.shade800
               ),
             ),
           ],
         ),

          Column(
            children: [
              Icon(
                Icons.message_outlined,
                color: Colors.grey.shade800,
                size: 22,// Set the icon color
              ),
              SizedBox(height: 4,),
              Text(
                "Support",
                style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade800
                ),
              ),
            ],
          ),

          Column(
            children: [
              Icon(
                Icons.payment_outlined,
                color: Colors.grey.shade800,
                size: 22,// Set the icon color
              ),
              SizedBox(height: 4,),
              Text(
                "Payments",
                style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade800
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
