import 'package:all_app/Screens/matrimonial/profile/photo_screen.dart';
import 'package:flutter/material.dart';

class ImageClick extends StatelessWidget {
  const ImageClick({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text(
          "Neha Sharma",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/g4.jpeg'), // Replace with the actual image path
                  fit: BoxFit.cover, // You can adjust the fit as needed
                ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Neha Sharma',
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),

                  SizedBox(height: 4,),
                  Row(
                    children: [
                      Text(
                        '26 Years',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Colors.white
                        ),
                      ),
                      SizedBox(width: 4,),
                      Text(
                        '|',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.white
                        ),
                      ),
                      SizedBox(width: 4,),
                      Text(
                        '5.6 ft',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Colors.white
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),


          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Wrap(
                            children: [
                              Text(
                                "I am a simple and practical person with a positive attitude. "
                                    "My beliefs are both modern and traditional. I believ"
                                    "e we need to progress and evolve as a society but not"
                                    " lose our traditional value",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color:Colors.grey.shade700
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                    SizedBox(height: 10,),

                    Row(
                        children: [
                          Expanded(
                            child: InkWell(
                               onTap: () {
                               Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => PhotoScreen()),
                                );
                               },
                              child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.image_outlined,color: Colors.white,),
                                      SizedBox(width: 4,),
                                      Text('Photo',
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w400,
                                            color:Colors.white
                                        ),
                                      ),
                                    ],
                                  )
                              ),
                            ),
                          ),
                          SizedBox(width: 15,),
                          Expanded(
                            child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(8)
                                ),
                                child:  Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.chat_outlined,color: Colors.white,),
                                    SizedBox(width: 4,),
                                    Text('Chat',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w400,
                                          color:Colors.white
                                      ),
                                    ),
                                  ],
                                )
                            ),
                          )
                        ],
                      ),
                    SizedBox(height: 15),

                    Row(
                      children: [
                        Text(
                          'What I Think ?',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.pinkAccent
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Wrap(
                      children: [
                        Text(
                          'What I expect from a partner ?',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color:Colors.grey.shade800
                          ),
                        ),
                      ],
                    ),

                    Wrap(
                      children: [
                        Text(
                          'I expect to be treated with kindness,'
                              ' love, affection, and respect. '
                              'I do not tolerate emotional or'
                              ' physical abuse. I expect '
                              'My partner to be loyal. This does not mean I expect '
                              'our relationship to be free of conflict.',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color:Colors.grey.shade800
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 10),
                    Wrap(
                      children: [
                        Text(
                          'What are my future goals and plans ?',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color:Colors.grey.shade800
                          ),
                        ),
                      ],
                    ),

                    Wrap(
                      children: [
                        Text(
                          "My future plans are having a job I enjoy doing, finding "
                              "good life-work balance, foster good relationships both at"
                              " work and in my personal life, and simply enjoy every day as"
                              " it comes and goes. Of course, I plan to continue working on"
                              " my language skills, because I want to become better in my work.",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color:Colors.grey.shade800
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Wrap(
                      children: [
                        Text(
                          'What are my future goals and plans ?',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color:Colors.grey.shade800
                          ),
                        ),
                      ],
                    ),

                    Wrap(
                      children: [
                        Text(
                          "“Marriage is more than a physical union; it is also a"
                              " spiritual and emotional union.” Marriage is the "
                              "beginning—the beginning of the family—and is a "
                              "life-long commitment. It also provides an opportunity "
                              "to grow in selflessness as you serve your wife and children.",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color:Colors.grey.shade800
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),
          ),



        ],
      ),
    );
  }
}
