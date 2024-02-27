import 'package:flutter/material.dart';

import '../../../styles/colors.dart';
import '../add_address.dart';

class AddressListCard extends StatefulWidget {
  const AddressListCard({super.key});

  @override
  State<AddressListCard> createState() => _AddressListCardState();
}

class _AddressListCardState extends State<AddressListCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
       Navigator.pop(context);
      },
      child: Material(
        elevation: 3,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
          decoration: BoxDecoration(
              color: AppColors.primaryColor.withOpacity(0.25),
              borderRadius: BorderRadius.circular(14)),
          padding: EdgeInsets.symmetric(vertical: 24, horizontal: 8),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.25),
                      borderRadius: BorderRadius.circular(14)),
                  child: Icon(
                    Icons.home_filled,
                    color: Colors.orange,
                    size: 28.0,
                  )),
              SizedBox(width: 8.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Home',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      'Tilak nagar,Chittorgarh Rajasthan',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 8.0),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddAddress()),
                  );
                },
                child: Icon(
                  Icons.edit_note_outlined,
                  color: Colors.black87,
                  size: 24.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
