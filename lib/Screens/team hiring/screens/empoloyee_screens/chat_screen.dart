import 'package:flutter/material.dart';

import 'chat.dart';
class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent.shade700,
        title: Text(
          " Chat",
          style: TextStyle(fontWeight: FontWeight.w600,fontSize: 25,color: Colors.white70)
        ),
        iconTheme: IconThemeData(
          color: Colors.white, // Change this color to the desired color
        ),
      ),
       body: SingleChildScrollView(
    padding: const EdgeInsets.all(11),
        child: Column(
             children:  [
               InkWell(
                 onTap: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => Chat()),
                   );
                 },
                 child: Container(
                   padding: EdgeInsets.all(8),
                   width: double.infinity,
                   height: 62,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(15),
                     boxShadow: [
                       BoxShadow(
                         color: Colors.grey.withOpacity(0.5),
                         spreadRadius: 2,
                         blurRadius: 4,
                         offset: Offset(0, 3),
                       ),
                     ],
                   ),
                   child: Row(
                     children: [
                       CircleAvatar(
                         radius: 20,
                         backgroundImage: AssetImage('assets/rahul.jpg'),
                       ),
                       SizedBox(width: 20),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(
                             "Devashish Yadav",
                             style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                           ),
                           Wrap(
                             children: [
                               Text(
                                 "Bits Pan India: Android",
                                 style: TextStyle(fontSize: 15),
                               ),
                             ],
                           ),
                         ],
                       ),
                       Spacer(),
                       Text(
                         "May 27",
                         style: TextStyle(fontSize: 15),
                       ),
                     ],
                   ),
                 ),
               ),
               SizedBox(height: 10,),
               InkWell(
                 onTap: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => Chat()),
                   );
                 },
                 child: Container(
                   padding: EdgeInsets.all(8),
                   width: double.infinity,
                   height: 62,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(15),
                     boxShadow: [
                       BoxShadow(
                         color: Colors.grey.withOpacity(0.5),
                         spreadRadius: 2,
                         blurRadius: 4,
                         offset: Offset(0, 3),
                       ),
                     ],
                   ),
                   child: Row(
                     children: [
                       CircleAvatar(
                         radius: 20,
                         backgroundImage: AssetImage('assets/raja.jpg'),
                       ),
                       SizedBox(width: 20),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(
                             "Kunal singh",
                             style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                           ),
                           Wrap(
                             children: [
                               Text(
                                 "Zucall : Android",
                                 style: TextStyle(fontSize: 15),
                               ),
                             ],
                           ),
                         ],
                       ),
                       Spacer(),
                       Text(
                         "January 24",
                         style: TextStyle(fontSize: 15),
                       ),
                     ],
                   ),
                 ),
               ),
               SizedBox(height: 10,),
               InkWell(
                 onTap: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => Chat()),
                   );
                 },
                 child: Container(
                   padding: EdgeInsets.all(8),
                   width: double.infinity,
                   height: 62,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(15),
                     boxShadow: [
                       BoxShadow(
                         color: Colors.grey.withOpacity(0.5),
                         spreadRadius: 2,
                         blurRadius: 4,
                         offset: Offset(0, 3),
                       ),
                     ],
                   ),
                   child: Row(
                     children: [
                       CircleAvatar(
                         radius: 20,
                         backgroundImage: AssetImage('assets/mona.jpg'),
                       ),
                       SizedBox(width: 20),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(
                             "Rani meghwal",
                             style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                           ),
                           Wrap(
                             children: [
                               Text(
                                 "Sarey software : Web",
                                 style: TextStyle(fontSize: 15),
                               ),
                             ],
                           ),
                         ],
                       ),
                      Spacer(),
                       Text(
                         "August 10",
                         style: TextStyle(fontSize: 15),
                       ),
                     ],
                   ),
                 ),
               ),
               SizedBox(height: 10,),
               InkWell(
                 onTap: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => Chat()),
                   );
                 },
                 child: Container(
                   padding: EdgeInsets.all(8),
                   width: double.infinity,
                   height: 62,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(15),
                     boxShadow: [
                       BoxShadow(
                         color: Colors.grey.withOpacity(0.5),
                         spreadRadius: 2,
                         blurRadius: 4,
                         offset: Offset(0, 3),
                       ),
                     ],
                   ),
                   child: Row(
                     children: [
                       CircleAvatar(
                         radius: 20,
                         backgroundImage: AssetImage('assets/neha.jpg'),
                       ),
                       SizedBox(width: 20),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(
                             "Bhavika garg",
                             style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                           ),
                           Wrap(
                             children: [
                               Text(
                                 "Omremedia : Flutter",
                                 style: TextStyle(fontSize: 15),
                               ),
                             ],
                           ),
                         ],
                       ),
                       Spacer(),
                       Text(
                         "Jun 04",
                         style: TextStyle(fontSize: 15),
                       ),
                     ],
                   ),
                 ),
               ),
               SizedBox(height: 10,),
               InkWell(
                 onTap: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => Chat()),
                   );
                 },
                 child: Container(
                   padding: EdgeInsets.all(8),
                   width: double.infinity,
                   height: 62,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(15),
                     boxShadow: [
                       BoxShadow(
                         color: Colors.grey.withOpacity(0.5),
                         spreadRadius: 2,
                         blurRadius: 4,
                         offset: Offset(0, 3),
                       ),
                     ],
                   ),
                   child: Row(
                     children: [
                       CircleAvatar(
                         radius: 20,
                         backgroundImage: AssetImage('assets/sonu.jpg'),
                       ),
                       SizedBox(width: 20),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(
                             "Pintu Yadav",
                             style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                           ),
                           Wrap(
                             children: [
                               Text(
                                 "Realbits  : Flutter Dev.",
                                 style: TextStyle(fontSize: 15),
                               ),
                             ],
                           ),
                         ],
                       ),
                       Spacer(),
                       Text(
                         "March 27",
                         style: TextStyle(fontSize: 15),
                       ),
                     ],
                   ),
                 ),
               ),
               SizedBox(height: 10,),
               InkWell(
                 onTap: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => Chat()),
                   );
                 },
                 child: Container(
                   padding: EdgeInsets.all(8),
                   width: double.infinity,
                   height: 62,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(15),
                     boxShadow: [
                       BoxShadow(
                         color: Colors.grey.withOpacity(0.5),
                         spreadRadius: 2,
                         blurRadius: 4,
                         offset: Offset(0, 3),
                       ),
                     ],
                   ),
                   child: Row(
                     children: [
                       CircleAvatar(
                         radius: 20,
                         backgroundImage: AssetImage('assets/raja.jpg'),
                       ),
                       SizedBox(width: 20),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(
                             "Kunal singh",
                             style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                           ),
                           Wrap(
                             children: [
                               Text(
                                 "Zucall : Android",
                                 style: TextStyle(fontSize: 15),
                               ),
                             ],
                           ),
                         ],
                       ),
                       Spacer(),
                       Text(
                         "January 24",
                         style: TextStyle(fontSize: 15),
                       ),
                     ],
                   ),
                 ),
               ),
               SizedBox(height: 10,),
               InkWell(
                 onTap: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => Chat()),
                   );
                 },
                 child: Container(
                   padding: EdgeInsets.all(8),
                   width: double.infinity,
                   height: 62,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(15),
                     boxShadow: [
                       BoxShadow(
                         color: Colors.grey.withOpacity(0.5),
                         spreadRadius: 2,
                         blurRadius: 4,
                         offset: Offset(0, 3),
                       ),
                     ],
                   ),
                   child: Row(
                     children: [
                       CircleAvatar(
                         radius: 20,
                         backgroundImage: AssetImage('assets/mona.jpg'),
                       ),
                       SizedBox(width: 20),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(
                             "Rani meghwal",
                             style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                           ),
                           Wrap(
                             children: [
                               Text(
                                 "Sarey software : Web",
                                 style: TextStyle(fontSize: 15),
                               ),
                             ],
                           ),
                         ],
                       ),
                       Spacer(),
                       Text(
                         "August 10",
                         style: TextStyle(fontSize: 15),
                       ),
                     ],
                   ),
                 ),
               ),
               SizedBox(height: 10,),
               InkWell(
                 onTap: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => Chat()),
                   );
                 },
                 child: Container(
                   padding: EdgeInsets.all(8),
                   width: double.infinity,
                   height: 62,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(15),
                     boxShadow: [
                       BoxShadow(
                         color: Colors.grey.withOpacity(0.5),
                         spreadRadius: 2,
                         blurRadius: 4,
                         offset: Offset(0, 3),
                       ),
                     ],
                   ),
                   child: Row(
                     children: [
                       CircleAvatar(
                         radius: 20,
                         backgroundImage: AssetImage('assets/neha.jpg'),
                       ),
                       SizedBox(width: 20),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(
                             "Bhavika garg",
                             style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                           ),
                           Wrap(
                             children: [
                               Text(
                                 "Omremedia : Flutter",
                                 style: TextStyle(fontSize: 15),
                               ),
                             ],
                           ),
                         ],
                       ),
                       Spacer(),
                       Text(
                         "Jun 04",
                         style: TextStyle(fontSize: 15),
                       ),
                     ],
                   ),
                 ),
               ),
               SizedBox(height: 10,),
               InkWell(
                 onTap: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => Chat()),
                   );
                 },
                 child: Container(
                   padding: EdgeInsets.all(8),
                   width: double.infinity,
                   height: 62,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(15),
                     boxShadow: [
                       BoxShadow(
                         color: Colors.grey.withOpacity(0.5),
                         spreadRadius: 2,
                         blurRadius: 4,
                         offset: Offset(0, 3),
                       ),
                     ],
                   ),
                   child: Row(
                     children: [
                       CircleAvatar(
                         radius: 20,
                         backgroundImage: AssetImage('assets/sonu.jpg'),
                       ),
                       SizedBox(width: 20),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(
                             "Pintu Yadav",
                             style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                           ),
                           Wrap(
                             children: [
                               Text(
                                 "Realbits  : Flutter Dev.",
                                 style: TextStyle(fontSize: 15),
                               ),
                             ],
                           ),
                         ],
                       ),
                       Spacer(),
                       Text(
                         "March 27",
                         style: TextStyle(fontSize: 15),
                       ),
                     ],
                   ),
                 ),
               ),
               SizedBox(height: 10,),
               InkWell(
                 onTap: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => Chat()),
                   );
                 },
                 child: Container(
                   padding: EdgeInsets.all(8),
                   width: double.infinity,
                   height: 62,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(15),
                     boxShadow: [
                       BoxShadow(
                         color: Colors.grey.withOpacity(0.5),
                         spreadRadius: 2,
                         blurRadius: 4,
                         offset: Offset(0, 3),
                       ),
                     ],
                   ),
                   child: Row(
                     children: [
                       CircleAvatar(
                         radius: 20,
                         backgroundImage: AssetImage('assets/raja.jpg'),
                       ),
                       SizedBox(width: 20),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(
                             "Kunal singh",
                             style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                           ),
                           Wrap(
                             children: [
                               Text(
                                 "Zucall : Android",
                                 style: TextStyle(fontSize: 15),
                               ),
                             ],
                           ),
                         ],
                       ),
                       Spacer(),
                       Text(
                         "January 24",
                         style: TextStyle(fontSize: 15),
                       ),
                     ],
                   ),
                 ),
               ),
               SizedBox(height: 10,),
               InkWell(
                 onTap: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => Chat()),
                   );
                 },
                 child: Container(
                   padding: EdgeInsets.all(8),
                   width: double.infinity,
                   height: 62,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(15),
                     boxShadow: [
                       BoxShadow(
                         color: Colors.grey.withOpacity(0.5),
                         spreadRadius: 2,
                         blurRadius: 4,
                         offset: Offset(0, 3),
                       ),
                     ],
                   ),
                   child: Row(
                     children: [
                       CircleAvatar(
                         radius: 20,
                         backgroundImage: AssetImage('assets/mona.jpg'),
                       ),
                       SizedBox(width: 20),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(
                             "Rani meghwal",
                             style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                           ),
                           Wrap(
                             children: [
                               Text(
                                 "Sarey software : Web",
                                 style: TextStyle(fontSize: 15),
                               ),
                             ],
                           ),
                         ],
                       ),
                       Spacer(),
                       Text(
                         "August 10",
                         style: TextStyle(fontSize: 15),
                       ),
                     ],
                   ),
                 ),
               ),
               SizedBox(height: 10,),
               InkWell(
                 onTap: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => Chat()),
                   );
                 },
                 child: Container(
                   padding: EdgeInsets.all(8),
                   width: double.infinity,
                   height: 62,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(15),
                     boxShadow: [
                       BoxShadow(
                         color: Colors.grey.withOpacity(0.5),
                         spreadRadius: 2,
                         blurRadius: 4,
                         offset: Offset(0, 3),
                       ),
                     ],
                   ),
                   child: Row(
                     children: [
                       CircleAvatar(
                         radius: 20,
                         backgroundImage: AssetImage('assets/neha.jpg'),
                       ),
                       SizedBox(width: 20),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(
                             "Bhavika garg",
                             style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                           ),
                           Wrap(
                             children: [
                               Text(
                                 "Omremedia : Flutter",
                                 style: TextStyle(fontSize: 15),
                               ),
                             ],
                           ),
                         ],
                       ),
                       Spacer(),
                       Text(
                         "Jun 04",
                         style: TextStyle(fontSize: 15),
                       ),
                     ],
                   ),
                 ),
               ),
               SizedBox(height: 10,),
               InkWell(
                 onTap: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => Chat()),
                   );
                 },
                 child: Container(
                   padding: EdgeInsets.all(8),
                   width: double.infinity,
                   height: 62,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(15),
                     boxShadow: [
                       BoxShadow(
                         color: Colors.grey.withOpacity(0.5),
                         spreadRadius: 2,
                         blurRadius: 4,
                         offset: Offset(0, 3),
                       ),
                     ],
                   ),
                   child: Row(
                     children: [
                       CircleAvatar(
                         radius: 20,
                         backgroundImage: AssetImage('assets/sonu.jpg'),
                       ),
                       SizedBox(width: 20),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(
                             "Pintu Yadav",
                             style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                           ),
                           Wrap(
                             children: [
                               Text(
                                 "Realbits  : Flutter Dev.",
                                 style: TextStyle(fontSize: 15),
                               ),
                             ],
                           ),
                         ],
                       ),
                       Spacer(),
                       Text(
                         "March 27",
                         style: TextStyle(fontSize: 15),
                       ),
                     ],
                   ),
                 ),
               ),




             ],
    ),
    ),
    );
  }
}
