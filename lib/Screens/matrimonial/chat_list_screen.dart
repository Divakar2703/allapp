import 'package:flutter/material.dart';

import 'chat_screen.dart';

class ChatListScreen extends StatefulWidget {
  const ChatListScreen({super.key});

  @override
  State<ChatListScreen> createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text(
            " Chats",
            style: TextStyle(fontWeight: FontWeight.w500,fontSize: 22,
                color: Colors.white)
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8),
        child: Column(
          children:  [

            Container(
              height: 45,
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.black54,
                    ),
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.black54),
                    contentPadding: EdgeInsets.only(left: 16), // Adjust left padding
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
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
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
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
                          "Vivek Sharma",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 4,),
                        Wrap(
                          children: [
                            Text(
                              "Vivek sharma is online",
                              style: TextStyle(fontSize: 12,color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      "May 27",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),

SizedBox(height: 5,),
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
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
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
                          "Vivek Sharma",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 4,),
                        Wrap(
                          children: [
                            Text(
                              "Vivek sharma is online",
                              style: TextStyle(fontSize: 12,color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      "May 27",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 5,),
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
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
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
                          "Vivek Sharma",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 4,),
                        Wrap(
                          children: [
                            Text(
                              "Vivek sharma is online",
                              style: TextStyle(fontSize: 12,color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      "May 27",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),SizedBox(height: 5,),
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
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
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
                          "Vivek Sharma",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 4,),
                        Wrap(
                          children: [
                            Text(
                              "Vivek sharma is online",
                              style: TextStyle(fontSize: 12,color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      "May 27",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),SizedBox(height: 5,),
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
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
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
                          "Vivek Sharma",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 4,),
                        Wrap(
                          children: [
                            Text(
                              "Vivek sharma is online",
                              style: TextStyle(fontSize: 12,color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      "May 27",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),SizedBox(height: 5,),
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
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
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
                          "Vivek Sharma",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 4,),
                        Wrap(
                          children: [
                            Text(
                              "Vivek sharma is online",
                              style: TextStyle(fontSize: 12,color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      "May 27",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),SizedBox(height: 5,),
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
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
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
                          "Vivek Sharma",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 4,),
                        Wrap(
                          children: [
                            Text(
                              "Vivek sharma is online",
                              style: TextStyle(fontSize: 12,color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      "May 27",
                      style: TextStyle(fontSize: 14),
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
