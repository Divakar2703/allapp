import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import 'account_screen.dart';

class NewUser extends StatelessWidget {
  const NewUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.white, // Change this color to the desired color
        ),
        title: Center(
          child: Text(''),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(22), topRight: Radius.circular(22)),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 32, 8, 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Here's your first \n step with us",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/fitting1.svg', // Replace with your SVG image asset path
                    width: 70,
                    height: 180,
                    fit: BoxFit.contain,
                  ),

                ],
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15), // Set the desired border radius
                  ),
                  elevation: 1,
                  child: Container(
                    padding: EdgeInsets.all(8),
                     child: Column(
                       children: [
                         Padding(
                           padding: const EdgeInsets.fromLTRB(8,4, 8,4),
                           child: Card(
                             elevation: 1,
                             child: Container(
                               height: 48,
                                 child: TextField(
                                   keyboardType: TextInputType.emailAddress,
                                   decoration: InputDecoration(
                                     labelText: 'Candidate Name',
                                     labelStyle: TextStyle(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w400
                                     ),
                                     border: OutlineInputBorder(),
                                     enabledBorder: OutlineInputBorder(
                                       borderSide: BorderSide(color: Colors.black38),
                                     ),
                                     focusedBorder: OutlineInputBorder(
                                         borderSide: BorderSide(color: Colors.black38)),
                                   ),
                                 ),
                             ),
                           ),
                         ),
                         //  SizedBox(height: 5,),
                         Padding(
                           padding: const EdgeInsets.fromLTRB(8,4, 8,3),
                           child: Card(
                             elevation: 1,
                             child: Container(
                               height: 48,
                                 child: TextField(
                                   keyboardType: TextInputType.emailAddress,
                                   decoration: InputDecoration(
                                     labelText: ' Email Id',
                                     labelStyle: TextStyle(
                                         fontSize: 15,
                                         fontWeight: FontWeight.w400
                                     ),
                                     border: OutlineInputBorder(),
                                     enabledBorder: OutlineInputBorder(
                                       borderSide: BorderSide(color: Colors.black38),
                                     ),
                                     focusedBorder: OutlineInputBorder(
                                       borderSide: BorderSide(color: Colors.black87),
                                     ),
                                   ),
                                 ),
                             ),
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.fromLTRB(8,4, 8,3),
                           child: Card(
                             elevation: 1,
                             child: Container(
                               height: 48,
                                 child: TextField(
                                   keyboardType: TextInputType.emailAddress,
                                   decoration: InputDecoration(
                                     labelText: 'Enter mobile number',
                                     labelStyle: TextStyle(
                                         fontSize: 15,
                                         fontWeight: FontWeight.w400
                                     ),
                                     border: OutlineInputBorder(),
                                     enabledBorder: OutlineInputBorder(
                                       borderSide: BorderSide(color: Colors.black38),
                                     ),
                                     focusedBorder: OutlineInputBorder(
                                       borderSide: BorderSide(color: Colors.black87),
                                     ),
                                   ),
                                 ),
                               ),
                             ),
                           ),
                         //  SizedBox(height: 5,),
                         Padding(
                           padding: const EdgeInsets.fromLTRB(8,4, 8,3),
                           child: Card(
                             elevation: 1,
                             child: Container(
                               height: 48,
                                 child: TextField(
                                   obscureText: true,
                                   keyboardType: TextInputType.emailAddress,
                                   decoration: InputDecoration(
                                     labelText: ' Password',
                                     labelStyle: TextStyle(
                                         fontSize: 15,
                                         fontWeight: FontWeight.w400
                                     ),
                                     border: OutlineInputBorder(),
                                     enabledBorder: OutlineInputBorder(
                                       borderSide: BorderSide(color: Colors.black38),
                                     ),
                                     focusedBorder: OutlineInputBorder(
                                       borderSide: BorderSide(color: Colors.black87),
                                     ),
                                   ),
                                 ),
                               ),
                             ),
                           ),

                         SizedBox(height: 30,),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             ElevatedButton(
                               onPressed: () {},
                               style: ElevatedButton.styleFrom(
                                 shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(16),
                                 ),
                                 minimumSize: Size(240, 48),
                               ),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.end,
                                 children: [
                                   Text(
                                     "Login",
                                     style: TextStyle(
                                       fontSize: 16,
                                       fontWeight: FontWeight.w500,
                                       color: Colors.white,
                                     ),
                                   ),
                                 ],
                               ),
                             ),
                           ],
                         ),
                       ],
                     ),
                  ),
                ),
              ),
              SizedBox(height: 40,),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          Account(), // Replace with your account screen widget
                    ),
                  );
                },
                child: Text(
                  " ---------- Already have an account ----------",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.cyanAccent.shade700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
