import 'package:flutter/material.dart';

class DataBaseProfileWidget extends StatelessWidget {
  // Define a list of profile data
  final List<Map<String, dynamic>> profileData = [
    {
      'name': 'Vishal Sharma',
      'ageHeight': '23|153cm-6ft-02inch',
      'status': 'Working',
      'location': 'Delhi',
      'education': 'B.Tech',
      'imagePath': 'assets/i.jpg',
    },
    {
      'name': 'Another Name',
      'ageHeight': '25|160cm-5ft-04inch',
      'status': 'Student',
      'location': 'Mumbai',
      'education': 'M.Sc',
      'imagePath': 'assets/g.jpeg',
    },
    {
      'name': 'yry Name',
      'ageHeight': '25|160cm-5ft-04inch',
      'status': 'Student',
      'location': 'Mumbai',
      'education': 'M.Sc',
      'imagePath': 'assets/sonu.jpg',
    },
    {
      'name': 'yry Name',
      'ageHeight': '25|160cm-5ft-04inch',
      'status': 'Student',
      'location': 'Mumbai',
      'education': 'M.Sc',
      'imagePath': 'assets/b2.jpeg',
    },
    {
      'name': 'Vishal Sharma',
      'ageHeight': '23|153cm-6ft-02inch',
      'status': 'Working',
      'location': 'Delhi',
      'education': 'B.Tech',
      'imagePath': 'assets/g1.jpeg',
    },
    {
      'name': 'Another Name',
      'ageHeight': '25|160cm-5ft-04inch',
      'status': 'Student',
      'location': 'Mumbai',
      'education': 'M.Sc',
      'imagePath': 'assets/b2.jpeg',
    },
    {
      'name': 'yry Name',
      'ageHeight': '25|160cm-5ft-04inch',
      'status': 'Student',
      'location': 'Mumbai',
      'education': 'M.Sc',
      'imagePath': 'assets/g1.jpeg',
    },
    {
      'name': 'yry Name',
      'ageHeight': '25|160cm-5ft-04inch',
      'status': 'Student',
      'location': 'Mumbai',
      'education': 'M.Sc',
      'imagePath': 'assets/b3.jpeg',
    },


    // Add more profiles as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SingleChildScrollView(
        child: Column(
          children: _buildProfileRows(),
        ),
      ),
    );
  }

  List<Widget> _buildProfileRows() {
    List<Widget> rows = [];

    for (int i = 0; i < profileData.length; i += 2) {
      // Create a row with two profiles
      Widget row = Row(
        children: [
          Expanded(child: _buildColumn(profileData[i])),
          SizedBox(width: 8),
          if (i + 1 < profileData.length) Expanded(child: _buildColumn(profileData[i + 1])),
        ],
      );

      rows.add(row);
    }

    return rows;
  }

  Widget _buildColumn(Map<String, dynamic> data) {
    return Column(
      children: [
        Card(
          elevation: 4,
          child: Container(
            padding: EdgeInsets.only(left: 8, right: 8, top: 16, bottom: 16),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Colors.transparent,
                width: 0.5,
              ),
            ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 48,
                  backgroundImage: AssetImage(data['imagePath']),
                ),
                SizedBox(height: 10),
                Text(
                  data['name'],
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.pinkAccent,
                  ),
                ),
                Text(
                  data['ageHeight'],
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${data['status']} |',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      ' ${data['location']}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                Text(
                  data['education'],
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 4,),
                // Container(
                //   padding: EdgeInsets.all(8),
                //   height: 35,
                //   decoration: BoxDecoration(
                //       color: Colors.blue,
                //       borderRadius: BorderRadius.circular(8)
                //   ),
                //   child:  Text(
                //     'View Profile',
                //     style: TextStyle(
                //         fontSize: 16,
                //         fontWeight: FontWeight.w400,
                //         color: Colors.white
                //     ),
                //   ),
                // ),
                // SizedBox(height: 4,),
                // Container(
                //   padding: EdgeInsets.all(8),
                //   height: 35,
                //   decoration: BoxDecoration(
                //       color: Colors.green,
                //       borderRadius: BorderRadius.circular(8)
                //   ),
                //   child:  Text(
                //     'Send Request',
                //     style: TextStyle(
                //         fontSize: 16,
                //         fontWeight: FontWeight.w400,
                //         color: Colors.white
                //     ),
                //   ),
                // )

                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.transparent, // Set background to transparent
                      radius: 20.0,
                      child: Container(
                        width: 50.0, // Double the radius to ensure the gradient covers the entire circle
                        height: 50.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [Color(0xFF696EFF),
                              Color(0xFFF8ACFF)], // Replace these color codes with your desired colors
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                        child: Icon(
                          Icons.visibility_outlined,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ),
                    ),

                    Spacer(),
                    CircleAvatar(
                      backgroundColor: Colors.transparent, // Set background to transparent
                      radius: 20.0,
                      child: Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF30C67C),
                              Color(0xFF6EE59F),
                              ], // Replace these color codes with your desired colors
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                        child: Icon(
                          Icons.send,
                          color: Colors.white,
                          size: 28.0,
                        ),
                      ),
                    ),

                  ],
                )



              ],
            ),
          ),
        ),
      ],
    );
  }
}
