import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../widget/empoloyee_widget/other_information.dart';
import '../../widget/empoloyee_widget/professional_details.dart';
import '../../widget/empoloyee_widget/profile_details_widget.dart';


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
              backgroundColor: Color(0xFF2FAEBB),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        actions: [
          IconButton(
            onPressed: () {},
            splashRadius: 30,
            icon: const Icon(
              Icons.notifications_none_rounded,
              color: Colors.white,
            ),
          ),
        ],
      ),
    body: Container(
      color:Color(0xFF2FAEBB),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(
                            'assets/logo.jpg'), // Add your image asset
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "Anamika\nand",
                        style: TextStyle(
                             fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                      SizedBox(
                        width: 130,
                      ),
                      IconButton(
                        onPressed: () {},
                        splashRadius: 24,
                        icon: const Icon(
                          Icons.edit_note_sharp,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              'Applied',
                              style: TextStyle(color: Colors.white, fontSize: 14),
                            ),
                            Text(
                              '07',
                              style: TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                      ),

                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              'Chats',
                              style: TextStyle(color: Colors.white, fontSize: 14),
                            ),
                            Text(
                              '08',
                              style: TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                      ),

                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              'Saved',
                              style: TextStyle(color: Colors.white, fontSize: 14),
                            ),
                            Text(
                              '22',
                              style: TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                      ),

                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              'Send Resume',
                              style: TextStyle(color: Colors.white, fontSize: 14),
                            ),
                            Text(
                              '04',
                              style: TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

            Expanded(
               child: Container(
               decoration: BoxDecoration(
                 color: Colors.white,
                   borderRadius: BorderRadius.only(
                       topLeft: Radius.circular(27),
                       topRight: Radius.circular(27)),
                 ),
                child: SingleChildScrollView(
                    padding: const EdgeInsets.all(11),
                    child: Column(
                      children: const [
                        ProfileDetailsWidget(),
                        SizedBox(height: 24),

                        Professional(),

                        SizedBox(height: 24),

                         OtherInformation()

                      ]
            ),
                  )
                )
            )
        ]
    ),
    ),


    );
  }
}
