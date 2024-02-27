import 'package:flutter/material.dart';
import '../../common_widgets/app_text.dart';
import 'component/edit_Profile.dart';
import 'component/walletSupportContenor.dart';
import 'order.dart';

class ProfileNewScreen extends StatefulWidget {
  const ProfileNewScreen({super.key});

  @override
  State<ProfileNewScreen> createState() => _ProfileNewScreenState();
}

class _ProfileNewScreenState extends State<ProfileNewScreen> {
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
        title: AppText(
          text: "Profile",
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "My account",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500
                ),
              ),
          
              SizedBox(height: 8,),
              Text(
                "9024252545",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  color: Colors.grey.shade700
                ),
              ),
          
          
              SizedBox(height:20,),
              WalletSupportContenor(),
              SizedBox(height:15,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey.shade500,
                    width: 0.8
                  )
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blueGrey.shade100, // Set the background color
                      radius: 15, // Set the radius
                      child: Icon(
                        Icons.refresh_outlined,
                        color: Colors.grey,
                        size: 18,// Set the icon color
                      ),
                    ),
          
                    SizedBox(width: 12,),
                    Text(
                      "App update available",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade700
                      ),
                    ),
          
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 4,vertical: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.green.shade100
                      ),
                      child:  Text(
                        "v12.53.0",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.green
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Icon(Icons.arrow_forward_ios_outlined,
                      color: Colors.grey,
                      size: 14,
                    )
                  ],
                ),
              ),

              SizedBox(height:18,),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EditProfile()),
                  );
                },
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blueGrey.shade100, // Set the background color
                      radius: 14, // Set the radius
                      child: Icon(
                        Icons.edit_calendar,
                        color: Colors.grey,
                        size: 16,// Set the icon color
                      ),
                    ),

                    SizedBox(width: 12,),
                    Text(
                      "Edit Profile",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade800
                      ),
                    ),

                    Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined,
                      color: Colors.grey,
                      size: 14,
                    )
                  ],
                ),
              ),
          
              SizedBox(height:20,),
              Text(
                "YOUR INFORMATION",
                style: TextStyle(
                    fontSize: 13 ,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade600
                ),
              ),
          
              SizedBox(height:18,),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Order()),
                  );
                },
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blueGrey.shade100, // Set the background color
                      radius: 14, // Set the radius
                      child: Icon(
                        Icons.autorenew,
                        color: Colors.grey,
                        size: 16,// Set the icon color
                      ),
                    ),

                    SizedBox(width: 12,),
                    Text(
                      "Your orders",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade800
                      ),
                    ),

                    Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined,
                      color: Colors.grey,
                      size: 14,
                    )
                  ],
                ),
              ),
          
              SizedBox(height:18,),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blueGrey.shade100, // Set the background color
                    radius: 14, // Set the radius
                    child: Icon(
                      Icons.home_outlined,
                      color: Colors.grey,
                      size: 16,// Set the icon color
                    ),
                  ),
          
                  SizedBox(width: 12,),
                  Text(
                    "Address book",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade800
                    ),
                  ),
          
                  Spacer(),
                  Icon(Icons.arrow_forward_ios_outlined,
                    color: Colors.grey,
                    size: 14,
                  )
                ],
              ),
          
              SizedBox(height:20,),
              Text(
                "OTHER INFORMATION",
                style: TextStyle(
                    fontSize: 13 ,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade600
                ),
              ),
          
              SizedBox(height:18,),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blueGrey.shade100, // Set the background color
                    radius: 14, // Set the radius
                    child: Icon(
                      Icons.screen_share,
                      color: Colors.grey,
                      size: 16,// Set the icon color
                    ),
                  ),
          
                  SizedBox(width: 12,),
                  Text(
                    "Share the app",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade800
                    ),
                  ),
          
                  Spacer(),
                  Icon(Icons.arrow_forward_ios_outlined,
                    color: Colors.grey,
                    size: 14,
                  )
                ],
              ),
          
              SizedBox(height:18,),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blueGrey.shade100, // Set the background color
                    radius: 14, // Set the radius
                    child: Icon(
                      Icons.info_outline,
                      color: Colors.grey,
                      size: 16,// Set the icon color
                    ),
                  ),
          
                  SizedBox(width: 12,),
                  Text(
                    "About us",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade800
                    ),
                  ),
          
                  Spacer(),
                  Icon(Icons.arrow_forward_ios_outlined,
                    color: Colors.grey,
                    size: 14,
                  )
                ],
              ),
          
              SizedBox(height:18,),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blueGrey.shade100, // Set the background color
                    radius: 14, // Set the radius
                    child: Icon(
                      Icons.local_offer_outlined,
                      color: Colors.grey,
                      size: 16,// Set the icon color
                    ),
                  ),
          
                  SizedBox(width: 12,),
                  Text(
                    "Get Feeding India receipt",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade800
                    ),
                  ),
          
                  Spacer(),
                  Icon(Icons.arrow_forward_ios_outlined,
                    color: Colors.grey,
                    size: 14,
                  )
                ],
              ),
          
              SizedBox(height:18,),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blueGrey.shade100, // Set the background color
                    radius: 14, // Set the radius
                    child: Icon(
                      Icons.star_border,
                      color: Colors.grey,
                      size: 16,// Set the icon color
                    ),
                  ),
          
                  SizedBox(width: 12,),
                  Text(
                    "Rate us on the Play Store",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade800
                    ),
                  ),
          
                  Spacer(),
                  Icon(Icons.arrow_forward_ios_outlined,
                    color: Colors.grey,
                    size: 14,
                  )
                ],
              ),
          
              SizedBox(height:18,),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blueGrey.shade100, // Set the background color
                    radius: 14, // Set the radius
                    child: Icon(
                      Icons.lock_open,
                      color: Colors.grey,
                      size: 16,// Set the icon color
                    ),
                  ),
          
                  SizedBox(width: 12,),
                  Text(
                    "Account privacy",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade800
                    ),
                  ),
          
                  Spacer(),
                  Icon(Icons.arrow_forward_ios_outlined,
                    color: Colors.grey,
                    size: 14,
                  )
                ],
              ),
          
              SizedBox(height:18,),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blueGrey.shade100, // Set the background color
                    radius: 14, // Set the radius
                    child: Icon(
                      Icons.notifications,
                      color: Colors.grey,
                      size: 16,// Set the icon color
                    ),
                  ),
          
                  SizedBox(width: 12,),
                  Text(
                    "Notification preferences",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade800
                    ),
                  ),
          
                  Spacer(),
                  Icon(Icons.arrow_forward_ios_outlined,
                    color: Colors.grey,
                    size: 14,
                  )
                ],
              ),
          
              SizedBox(height:18,),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blueGrey.shade100, // Set the background color
                    radius: 14, // Set the radius
                    child: Icon(
                      Icons.power_settings_new,
                      color: Colors.grey,
                      size: 16,// Set the icon color
                    ),
                  ),
          
                  SizedBox(width: 12,),
                  GestureDetector(
                    onTap: (){

                    },
                    child: Text(
                      "Log out",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade800
                      ),
                    ),
                  ),
          
                  Spacer(),
                  Icon(Icons.arrow_forward_ios_outlined,
                    color: Colors.grey,
                    size: 14,
                  )
                ],
              ),
          
          
          
          
          
            ],
          ),
        ),
      ),
    );
  }
}
