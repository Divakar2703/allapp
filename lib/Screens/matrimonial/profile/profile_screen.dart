import 'package:all_app/Screens/matrimonial/profile/photo_screen.dart';
import 'package:all_app/Screens/matrimonial/profile/prefere_widget.dart';
import 'package:all_app/Screens/matrimonial/profile/qualification_widget.dart';
import 'package:flutter/material.dart';

import 'Edit Profile/edit_screen.dart';
import 'about_personal_Deatail_widget.dart';
import 'family_widget.dart';
import 'image_click.dart';
import 'lifestyle_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: Text(
            "Neha Sharma",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 22, color: Colors.white),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.edit_note_sharp,size: 30,),
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditScreen()),
                );
              },
            )
          ],
        ),
        body: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ImageClick()),
                );
              },
              child: Container(
                padding: EdgeInsets.all(8),
                margin:  EdgeInsets.all(8),
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/g4.jpeg'), // Replace with the actual image path
                    fit: BoxFit.cover, // You can adjust the fit as needed
                  ),
                  borderRadius: BorderRadius.circular(16)
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
                          Spacer(),
                          Container(
                            height: 35,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.pinkAccent,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => PhotoScreen()),
                                  );

                                },
                                child: Text(
                                  'Photo',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          )

                        ],
                      ),
                    ],
                  ),
                ),
                ),
            ),
            TabBar(
              tabs: [
                Tab(text: 'Personal Deatail',),
                Tab(text: 'Physical attribute & Lifestyle'),
                Tab(text: 'Education & Occupation'),
                Tab(text: 'Family & Religion'),
                Tab(text: 'Prefere preference',),
              ],
              isScrollable: true,
              labelColor: Colors.pinkAccent,
              unselectedLabelColor: Colors.grey,
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[

                  AboutPersonalDeatail(),

                  LifestyleWidget(),

                  QualificationWidget(),

                  FamilyWidget(),

                  PrefereWidget(),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
