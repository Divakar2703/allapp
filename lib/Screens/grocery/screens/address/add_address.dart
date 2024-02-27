import 'package:all_app/Screens/grocery/styles/colors.dart';
import 'package:flutter/material.dart';
import '../../common_widgets/app_text.dart';

class AddAddress extends StatefulWidget {
  const AddAddress({super.key});

  @override
  State<AddAddress> createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
            child: AppText(
              text: "Enter Address Details",
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8.0,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 8.0),
                  child: Row(
                    children: [
                      Text('Saved Location',style: TextStyle(color: Colors.black,fontSize: 16.0,fontWeight: FontWeight.bold),),
                      Spacer(),
                      Text('Change',style: TextStyle(color: Colors.green,fontSize: 16.0,fontWeight: FontWeight.w500),),

                    ],
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor.withOpacity(0.25),
                      borderRadius: BorderRadius.circular(14)),
                  padding: EdgeInsets.symmetric(vertical: 24, horizontal: 8),
                  child: Row(
                    children: [
                      Icon(Icons.location_on_outlined,color: Colors.green,size: 32.0,),
                      SizedBox(width: 8.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Home',style: TextStyle(color: Colors.black,fontSize: 16.0,fontWeight: FontWeight.bold),),
                            SizedBox(height: 4.0),
                            Text('Tilak nagar,Chittorgarh Rajasthan',style: TextStyle(color: Colors.black87,fontSize: 16.0,fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Icon(Icons.delete_forever_outlined,color: Colors.green,size: 32.0,),
                    ],
                  ),
                ),
                SizedBox(height: 16.0),
                // Text('House No.and Floor',style: TextStyle(color: Colors.black,fontSize: 16.0,fontWeight: FontWeight.normal),),
                TextField(
                  decoration: InputDecoration(

                    filled: true,
                    fillColor: Color(0xffeff1fe),
                    labelText: 'House no and Floor',
                    labelStyle: TextStyle(
                      color: Colors.grey.shade800,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),

                    ),

                    // Remove the default border
                    contentPadding:
                    EdgeInsets.all(10), // Add padding to the text field
                  ),
                ),
                SizedBox(height: 16.0),
                TextField(
                  decoration: InputDecoration(

                    filled: true,
                    fillColor: Color(0xffeff1fe),
                    labelText: 'Building and Block NO.',
                    labelStyle: TextStyle(
                      color: Colors.grey.shade800,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),

                    ),

                    // Remove the default border
                    contentPadding:
                    EdgeInsets.all(10), // Add padding to the text field
                  ),
                ),
                SizedBox(height: 16.0),
                TextField(
                  decoration: InputDecoration(

                    filled: true,
                    fillColor: Color(0xffeff1fe),
                    labelText: 'Landmark and area Name(Optional)',
                    labelStyle: TextStyle(
                      color: Colors.grey.shade800,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),

                    ),

                    // Remove the default border
                    contentPadding:
                    EdgeInsets.all(10), // Add padding to the text field
                  ),
                ),
                SizedBox(height: 16.0),
                TextField(
                  decoration: InputDecoration(

                    filled: true,
                    fillColor: Color(0xffeff1fe),
                    labelText: 'Pincode',
                    labelStyle: TextStyle(
                      color: Colors.grey.shade800,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(
                        color: Color(0xffeff1fe), // Set your desired border color
                      ),


                    ),

                    // Remove the default border
                    contentPadding:
                    EdgeInsets.all(10), // Add padding to the text field
                  ),
                ),
                SizedBox(height: 16.0),
                Text('Add Address Label',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black87),),
                SizedBox(height: 8.0),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor.withOpacity(0.05),
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(
                            color: Colors.green, // Set your desired border color
                            width: 1.0, // Set your desired border width
                          ),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Image.asset('assets/icons/emoji/upsee.png', height: 24, width: 24,),
                            Icon(Icons.home, color: Colors.green, size: 24.0,),
                            SizedBox(width: 8.0),
                            Text(
                              'Home',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 8.0),
                    Expanded(
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                            color: AppColors.primaryColor.withOpacity(0.25),
                            borderRadius: BorderRadius.circular(14),),

                        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Image.asset('assets/icons/emoji/upsee.png', height: 24,width: 24,),
                            Icon(Icons.work,color: Colors.green,size: 24.0,),
                            SizedBox(width: 8.0),
                            Text('Work',style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal,color: Colors.black87),),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 8.0),
                    Expanded(
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor.withOpacity(0.05),
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(
                            color: Colors.green, // Set your desired border color
                            width: 1.0, // Set your desired border width
                          ),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Image.asset('assets/icons/emoji/upsee.png', height: 24, width: 24,),
                            Icon(Icons.other_houses, color: Colors.green, size: 24.0,),
                            SizedBox(width: 8.0),
                            Center(
                              child: Text(
                                'Others',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 32.0),
                Material(
                  elevation: 4.0, // Set your desired elevation value
                  borderRadius: BorderRadius.circular(14),
                  child: Container(
                    width: double.infinity,
                    height: 48.0,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: Colors.green, // Set your desired border color
                        width: 1.0, // Set your desired border width
                      ),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                    child: Center(
                      child: Text(
                        'Save and Continue',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
